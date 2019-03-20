/*
    REQUIRES   
        npm colors
		npm tracer
		npm sockjs
*/


////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////
// WS
const sockJS = require('sockjs');
const ws = sockJS.createServer({ sockjs_url: '' });
const wsServer = require('http').createServer();
ws.installHandlers(wsServer, {prefix:'/v1/console/WS'});
wsServer.listen(1102);
const wsClients = {};
let wsClientsLength = 0;
// WS CONNECTED
ws.on('connection', function(conn) {
	// new user
	wsClients[conn.id] = conn;
	// WS RECEIVED
	// conn.on('data', function(msgData) {
	// 	msgData = JSON.parse(msgData);
	// 	for (var client in wsClients){
	// 		wsClients[client].write(JSON.stringify(msgData));
	// 	}
	// });
	// WS CLIENT DISCONNECTED
	conn.on('close', function() {
		delete wsClients[conn.id];
	});
});



////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////
// cconsole
const colors = require('colors');
const cconsole = require('tracer').colorConsole({
	filters: {
		trace: colors.white,
		info: colors.green,
		log: colors.grey,
		debug: colors.yellow,
		warn: colors.yellow,
		warning: colors.yellow,
		error: colors.red
	},
	format: [
		"{{message}} \n({{file}}:{{line}})", //default format
		{
			error: "{{message}} \n({{file}}:{{line}})" // error format
		}
	],
	dateformat: "ddd h:MM tt (Z)",
	preprocess: function(data) {
	},
	transport: function(data) {

		// fix "circular structure" to be JSON friendly
		// for (var each in data.args) {
		// 	if (typeof data.args[each] == 'function') {
		// 		(function(callback) {
		// 			data.args[each] = callback.toString();
		// 		})(data.args[each]);
		// 	}
		// 	data.args[each] = ccstringify(data.args[each],null,'');
		// 	if (data.args[each]) {
		// 		data.args[each] = data.args[each].replace(/(?:\r\n|\r|\n)/g, '\t').replace(/\t/g, ' ');
		// 	}
		// }

		// fix title
		switch(data.title) {
			case "info":
			break;
			case "warn":
			case "warning":
				data.title = "warn";
			break;
			case "error":
			break;
			default:
				data.title = "log";
			break;
		}
	
		// output to console
		console[data.title](data.output);

		// output to WS
		for (var client in wsClients){
			wsClients[client].write(JSON.stringify(data));
		}

	}/*,
	ws: function(message, status) {
		// skip banal debug logs
		if (status=='debug') {
			return false;
		}
		if (status=='warn') {
			status = 'warning';
		}
		if (typeof message === 'object' || typeof message === 'function') {
			message = JSON.stringify(message, null, ' ');
		} else {
			message = message;
		}
		// WS
		for (var client in wsClients){
			wsClients[client].write(JSON.stringify({
				status: status,
				message: message
			}));
		}
	}*/
});
// error
process.on('uncaughtException', function(err) {
	cconsole.error('uncaughtException: \n' + err.stack);
});
// fatal error
process.on('exit', function(code) {
	// WS
	for (var client in wsClients){
		wsClients[client].write(JSON.stringify({
			status: "error",
			message: "Fatal Error! Code: "+code
		}));
	}
});




// functions
const ccstringify = function(obj, replacer, indent) {
	var printedObjects = [];
	var printedObjectKeys = [];

	function printOnceReplacer(key, value) {
		if (printedObjects.length > 2000) { // browsers will not print more than 20K, I don't see the point to allow 2K.. algorithm will not be fast anyway if we have too many objects
			return 'object too long';
		}
		var printedObjIndex = false;
		printedObjects.forEach(function(obj, index) {
			if (obj === value) {
				printedObjIndex = index;
			}
		});

		if (key === '') { //root element
			printedObjects.push(obj);
			printedObjectKeys.push("root");
			return value;
		} else if (printedObjIndex + "" != "false" && typeof(value) == "object") {
			if (printedObjectKeys[printedObjIndex] == "root") {
				return "(pointer to root)";
			} else {
				return "(see " + ((!!value && !!value.constructor) ? value.constructor.name.toLowerCase() : typeof(value)) + " with key " + printedObjectKeys[printedObjIndex] + ")";
			}
		} else {

			var qualifiedKey = key || "(empty key)";
			printedObjects.push(value);
			printedObjectKeys.push(qualifiedKey);
			if (replacer) {
				return replacer(key, value);
			} else {
				return value;
			}
		}
	}
	var stringified = JSON.stringify(obj, printOnceReplacer, indent);
	return stringified;
};





exports.module = { log:cconsole.log , info:cconsole.info, warn:cconsole.warn, warning:cconsole.warning, error:cconsole.error };