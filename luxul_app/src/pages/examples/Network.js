/* core */
import React from 'react';
/* components */
import Box from 'components/box/Box';

/* forms */
import { LuxulForm, LuxulSelect, LuxulInput, validations } from 'components/form/LuxulForm';

/*
	form
*/
class PageComponent extends React.Component {
	state = {
		luxulFormValues: {
			network1: {},
			network2: {},
			lan: {},
		},
	};

	componentDidMount() {
		this._isMounted = true;

		const getData = () => {
			/*
				request: get data
			*/
			this.setState({ luxulFormLoading: true });

			this.props.ubus.get.bind(this)('examples')
				.then(responseData => {
					// data success
					if (this._isMounted) {
						for (let key in responseData.values) {
							if (!this.state.luxulFormValues[key]) {
								delete responseData.values[key];
							}
						}
						this.setState({
							luxulFormValues: responseData.values,
							luxulFormValuesOriginal: JSON.parse(JSON.stringify(responseData.values)),
							luxulFormConnectionFailed: false,
							luxulFormLoading: false,
						});
						// this.props.dispatch(layoutActions.message({}));
					}
				})
				.catch(() => {});
			// .catch((err)=>{
			// 	// data failed
			// 	if (this._isMounted) {
			// 		this.setState({"luxulFormConnectionFailed": true, "luxulFormLoading": false});
			// 		this.props.history.push('/login');
			// 		this.props.dispatch(layoutActions.message({title:"Connection failed. Please check that your device is connected and powered on.", status:1}));
			// 		// getData();
			// 	}
			// })
		};
		getData();
	}

	componentWillUnmount() {
		// we DO need this. After the component dismounts, "this" scope still exists if any lingering references to it remain (such as in an AJAX or setTimeout)
		this._isMounted = false;
	}

	render() {
		// var { dispatch } = this.props;

		const handleSubmit = valid => {
			/*
				request: set data
			*/
			this.setState({ luxulFormSubmitting: true });
			// dispatch(layoutActions.message({}));
			valid
				.then(event => {
					// form is VALID
					for (var section in this.state.luxulFormValues) {
						if (section && this.state.luxulFormValues[section]) {
							const values = this.state.luxulFormValues[section];

							// OK, do custom action
							this.props.ubus
								.set('examples', section, values)
								.then(action => {
									// action success
									// dispatch(layoutActions.message({status:0, message:"Success!"}));
									this.setState({
										luxulFormSubmitting: false,
										luxulFormValuesOriginal: JSON.parse(JSON.stringify(this.state.luxulFormValues)),
									});
								})
								.catch(err => {
									// action failed
									// dispatch(layoutActions.message({title:"Request failed. Please check that your device is connected and powered on.", status:1}));
									this.setState({ luxulFormSubmitting: false });
									this.setState({ luxulFormSubmitAttempted: false });
								});
						}
					}
				})
				.catch(err => {
					// form is NOT valid
					console.error('Error: ' + err);
				});
		};

		return (
			<Box box={{ title: this.props.page.title }}>
				<LuxulForm stateScope={this} onSubmit={handleSubmit}>
					<div className="formSection">
						<h4>Interfaces</h4>
						<p>
							Lets try and edit some real device configuration using UCI over UBUS... Like, for
							real!
						</p>
					</div>

					<div className="formSection">
						<h4>Network1</h4>
						<fieldset className="info">
							<label>SSID:</label>
							<LuxulInput
								stateScope={this}
								name="network1.ssid"
								type="text"
								placeholder="Type something"
								validations={[validations.required]}
							/>
						</fieldset>
					</div>

					<div className="formSection">
						<h4>Network2</h4>
						<fieldset className="info">
							<label>SSID:</label>
							<LuxulInput
								stateScope={this}
								name="network2.ssid"
								type="text"
								placeholder="Type something else"
								validations={[validations.required]}
							/>
						</fieldset>
					</div>

					<div className="formSection">
						<h4>LAN</h4>
						<fieldset className="info">
							<label>Protocol:</label>
							<LuxulSelect stateScope={this} name="lan.proto" validations={[validations.required]}>
								<option value="DHCP">DHCP client</option>
								<option value="static">Static address</option>
								<option value="PPPoE">PPPoE</option>
							</LuxulSelect>
						</fieldset>
						<fieldset className="info">
							<label>IPv4 address:</label>
							<LuxulInput
								stateScope={this}
								name="lan.ip"
								type="text"
								placeholder="0.0.0.0"
								validations={[validations.required, validations.ipv4]}
							/>
						</fieldset>
						<fieldset className="info">
							<label>IPv4 netmask:</label>
							<LuxulSelect
								stateScope={this}
								name="lan.netmask"
								validations={[validations.required, validations.ipv4]}
							>
								<option value="">Select...</option>
								<option value="255.255.255.0">255.255.255.0</option>
								<option value="255.255.0.0">255.255.0.0</option>
								<option value="255.0.0.0">255.0.0.0</option>
								<option value="255.255.128.0">255.255.128.0</option>
								<option value="255.255.192.0">255.255.192.0</option>
								<option value="255.255.224.0">255.255.224.0</option>
								<option value="255.255.240.0">255.255.240.0</option>
								<option value="255.255.248.0">255.255.248.0</option>
								<option value="255.255.252.0">255.255.252.0</option>
								<option value="255.255.254.0">255.255.254.0</option>
							</LuxulSelect>
						</fieldset>
					</div>
				</LuxulForm>
			</Box>
		);
	}
}

export default PageComponent;
