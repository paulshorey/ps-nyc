/*
	requests
*/
const rpcdRequest = async (ubusObject, ubusMethod, ubusArgs = {}) => {
	/*
		format - error message
		(nicely formatted message object gets output to the UI's nicely designed message container)
	*/
	const make_errorMessage = function(params) {
		var err = {
			status: params.status || 'error',
			message: params.message || 'Request failed',
			support: params.support || '',
		};
		// error details
		if (params.supportDetails) {
			// support details (if needed, add to err object)
			err.supportDetails = {};
			err.supportDetails['Device'] = window.store.deviceInfo.model;
			err.supportDetails['Firmware'] = window.store.deviceInfo.firmware;
			for (var i = 0; i < params.supportDetails.length; i++) {
				err.supportDetails[i] = params.supportDetails[i];
			}
			err.supportDetails['ubusMethod'] = ubusMethod;
			err.supportDetails['ubusArgs'] = JSON.stringify(ubusArgs);
			delete params.supportDetails;
			// error code
			if (err.supportDetails.code) {
				switch (err.supportDetails.code) {
					case 'ubus-json--32002':
						if (window.location.href.toString().split(window.location.host)[1] === '/login') {
							return {
								supportDetails: ['Session expired, but on session page, so suppressing this error'],
							};
						}
						err.status = 'Session expired';
						err.message = 'Session expired';
						err.support = [
							'The connection to your device has been interrupted. This usually happens if you continue using this app after your computer has been asleep. It is also possible that your device was restarted since you last logged in.',
							"<a href='/login'>Please click here to go back and session again.</a>",
						];
						err.supportDetails = undefined;
						break;
					default:
						err.support = [
							'Please restart the device and your browser.',
							'Please update your device to the latest firmware.',
							"If that doesn't work, please contact support with the following info:",
						];
						err.supportDetails = err.supportDetails;
						break;
				}
			}
		}
		return err;
	};

	/*
		preset - ubus_rpc_session_id
	*/
	var ubusSession = window.localStorage.ubus_rpc_session_id || '00000000000000000000000000000000';
	if (ubusObject === 'session' && ubusMethod === 'login') {
		ubusSession = '00000000000000000000000000000000';
	}

	/*
		do - request
	*/
	// validate
	// filter
	if (ubusArgs.values) {
		ubusArgs.values = Object.assign({}, ubusArgs.values);
		for (let u in ubusArgs.values) {
			if (ubusArgs.values[u] === true) {
				ubusArgs.values[u] = 'true';
			} else if (ubusArgs.values[u] === false) {
				ubusArgs.values[u] = 'false';
			}
		}
	}
	// send
	const postData = {
		method: 'POST',
		body: JSON.stringify({
			jsonrpc: '2.0',
			id: '1',
			method: 'call',
			params: [ubusSession, ubusObject, ubusMethod, ubusArgs],
		}),
	};
	console.log('postData', postData);

	/*
		read - response data
	*/
	let response;
	try {
		response = await fetch('/ubus', postData);
		if (!response.ok) {
			window.store.message = {
				title:
					'Connection failed @ ubus::rpcdRequest. Please check that your device is connected and powered on.',
				type: 'error',
				opened: true,
			};
			throw make_errorMessage({
				title: 'Could not connect to device',
				support: [
					'Please check that the device is powered on and ethernet cord is connected.',
					'It takes about 2 minutes to start up after being unplugged.',
				],
				status: 'ubus !response.ok',
			});
		}
	} catch (err) {
		window.store.message = {
			title:
				'Connection failed @ ubus::rpcdRequest. Please check that your device is connected and powered on.',
			type: 'error',
			opened: true,
		};
		throw make_errorMessage({
			title: 'Could not connect to device',
			support: [
				'Please check that the device is powered on and ethernet cord is connected.',
				'It takes about 2 minutes to start up after being unplugged.',
			],
			status: 'ubus response catch(err)',
		});
	}

	/* 
		validate
		json.error[0] ... error code
		json.error[1] ... error message
		json.result[0] ... result status (0 for no problems)
		json.result[1] ... result data
	*/
	var json = await response.json();

	// fail
	if (json.error) {
		throw make_errorMessage({
			title: json.error.message || json.error[1],
			supportDetails: { code: 'ubus-json-' + (json.error.code || json.error[0]) },
		});
	} else if (json.result[0] !== 0) {
		// can't be a "switch" statement because ES Lint does not like "throw" commands in it, because that makes the next "break" command unreachable
		if (json.result[0] === 6) {
			throw make_errorMessage({ title: 'Wrong username or password' });
		} else if (json.result[0] === 4) {
			throw make_errorMessage({
				supportDetails: {
					code: 'ubus-' + json.result[0],
					documentation: "'ubusArgs.config' value does not match that of on device",
				},
			});
		} else if (json.result[0] === 3) {
			throw make_errorMessage({
				supportDetails: {
					code: 'ubus-' + json.result[0],
					documentation: "unable to use 'ubusMethod'",
				},
			});
		} else {
			throw make_errorMessage({ supportDetails: { code: 'ubus-' + json.result[0] } });
		}

		// success
	} else {
		// console.info('ubus.js success: json.result[1]',json.result[1]);
		var jsonResultData = json.result[1];
		if (ubusMethod === 'get') {
			if (jsonResultData.values) {
				for (let u in jsonResultData.values) {
					if (jsonResultData.values[u] === 'true') {
						jsonResultData.values[u] = true;
					} else if (jsonResultData.values[u] === 'false') {
						jsonResultData.values[u] = false;
					}
				}
			}
		}
	}

	/*
		do extra - commit

	*/
	if (
		ubusMethod === 'set' &&
		(json.result && json.result[0] === 0 && json.result[1] === undefined)
	) {
		/*const commit = await */ rpcdRequest(ubusObject, 'commit', ubusArgs);
	}

	/*
		do extra - session id and expiration
	*/
	if (ubusObject === 'session' && ubusMethod === 'login') {
		if (json.result && json.result[1] && json.result[1].ubus_rpc_session) {
			const { ubus_rpc_session, expires } = json.result[1];
			window.localStorage.setItem('ubus_rpc_session_id', ubus_rpc_session);
			window.localStorage.setItem('ubus_rpc_session_expiration', Date.now() + expires * 1000);
			/*
				on expiration
			*/
			// now how do we display a message at the top of the app - telling the user that their session is about to expire
		}
	}

	/*
		return to middleware
	*/
	console.log('ubusRequest json.result ', json.result);
	return json.result[1];
};

/*
	UCI
	export {
		login...
		get...
		set...
		commit...
		revert...
	}
*/
/* session data */
if (typeof window.device !== 'object' || !window.store.deviceInfo) {
	window.device = { info: {} };
}
/* exports */

const login = function(formData) {
	// const boundComponent = this;

	var promise = new Promise(function(resolve, reject) {
		rpcdRequest('session', 'login', formData)
			.then(function(response) {
				window.log('error', 'login success', response);
				resolve(response);
			})
			.catch(function(response) {
				window.log('error', 'login error', response);
				reject(response);
			});
	});
	return promise;
};

const get = function(uciConfig, uciSection) {
	const boundComponent = this;

	var uciData = { config: uciConfig };
	if (uciSection) {
		uciData.section = uciSection;
	}

	var promise = new Promise(function(resolve, reject) {
		rpcdRequest('uci', 'get', uciData)
			.then(function(response) {
				console.log('UBUS get success', response.body);
				resolve(response);
			})
			.catch(function(response) {
				console.log('UBUS get error', response);

				if (boundComponent._isMounted) {
					if (boundComponent.state) {
						boundComponent.setState({ luxulFormConnectionFailed: true, luxulFormSubmitting: false, luxulFormSubmitAttempted: false });
					}
					boundComponent.props.history.push('/login');
					// timeout is only for the animation - when new route loads - the messge will be collapsed, then transition to opened
					setTimeout(function() {
						window.store.message = {
							title:
								'Connection failed @ ubus.get.catch. Please check that your device is connected and powered on.',
							type: 'error',
							opened: true,
						};
					}, 0);
				}
			});
	});

	return promise;
};

const set = function(uciConfig, uciSection, formValues) {
	const boundComponent = this;
	var uciData = { config: uciConfig, section: uciSection, values: formValues };

	var promise = new Promise(function(resolve, reject) {
		/*
			first, set
		*/
		rpcdRequest('uci', 'set', uciData)
			.then(function() {
				console.log('UBUS set success');
				resolve(true);

				/*
				then, commit
				* actually, this is done inside rpcdRequest()
			*/
				// rpcdRequest("uci", "commit", uciData)
				// .then(function(response) {
				// 	console.log('UBUS commit success',response.body);
				// 	resolve(response);
				// })
				// .catch(function(response) {
				// 	console.error('UBUS commit error',response);
				// 	window.store.message = {title:"Connection failed. Please check that your device is connected and powered on.", type:"error",opened:true};
				// });
			})
			.catch(function(response) {
				if (boundComponent._isMounted) {
					if (boundComponent.state) {
						boundComponent.setState({ luxulFormConnectionFailed: true, luxulFormSubmitting: false, luxulFormSubmitAttempted: false });
					}
				}
				setTimeout(function() {
					window.store.message = {
						title:
							'Connection failed @ ubus.set.catch. Please check that your device is connected and powered on.',
						type: 'error',
						opened: true,
					};
				}, 0);
			});
	});

	return promise;
};

const reset = function() {
	var promise = new Promise(function(resolve, reject) {
		if (false) {
		} else {
		}
	});
	return promise;
};

export { login, get, set, reset };
