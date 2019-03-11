/*
	REQUIRES:
		npm twillio
		npm sockjs
		process.secret
		process.http
		process.app

	WS: :8888/v1/chat/WS
		connects websocket stream
			triggers websocket push with total users

	POST: /v1/chat/SMS
		accepts SMS text data
		returns success header
			triggers websocket push with this data
*/
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
// TWILIO
const twillio = require('twilio')(process.secret.twilio.sid, process.secret.twilio.token);
// WS
const sockJS = require('sockjs');
const ws = sockJS.createServer({sockjs_url: ''});
const wsServer = require('http').createServer();
ws.installHandlers(wsServer, {prefix: '/v1/chat/WS'});
wsServer.listen(1101);
const wsClients = {};
let wsClientsLength = 0;

// WS CONNECTED
ws.on('connection', function (conn) {
    process.console.info('new user connected: ' + conn.id);
    // new user
    wsClients[conn.id] = conn;
    wsClients[conn.id].user = {}; // we must find out!
    wsClientsLength++;

    /*
        WS NOTIFY USERS
        make note of existing users
    */
    var users = {};
    var ui = 0;
    for (var c in wsClients) {
        ui++;
        users[c] = wsClients[c].user || {};
    }
    // alert users
    if (ui) {
        var metaData = {
            users
        };
        for (var client in wsClients) {
            wsClients[client].write(JSON.stringify(metaData));
        }
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////
    // WS RECEIVED
    conn.on('data', function (msgData) {
        msgData = JSON.parse(msgData);
        /*
            type msgData: {
                message: String,
                user: {
                    ip: string
                    name: string
                }
            }
        */
        if (msgData.user) {
            wsClients[conn.id].user = msgData.user;
        }
        if (msgData.message) {

            /*
                WS CALL HOME
                * text Paul the message
            */
            twillio.messages
                .create({
                    body: (wsClients[conn.id].user ? wsClients[conn.id].user.name + " " : "") + msgData.message,
                    to: process.secret.twilio.toPhoneNumber,
                    from: process.secret.twilio.fromPhoneNumber
                })
                .then(msgData => process.console.info(msgData))
                .catch(error => process.console.warn(error));

            /*
                WS COPY USERS
                * tell everyone what someone said
            */
            for (var client in wsClients) {
                wsClients[client].write(JSON.stringify(msgData));
            }

        }
    });

    // WS CLIENT DISCONNECTED
    conn.on('close', function () {
        delete wsClients[conn.id];
        wsClientsLength--;

        /*
            WS NOTIFY USERS
            * that someone has left
        */
        // make note of existing users
        var users = {};
        var ui = 0;
        for (var c in wsClients) {
            ui++;
            users[c] = wsClients[c].user || {};
        }
        // alert users
        if (ui) {
            var metaData = {
                users
            };
            for (var client in wsClients) {
                wsClients[client].write(JSON.stringify(metaData));
            }
        }
    });

});


////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
// TWILIO RECEIVED
process.app.post('/v1/chat/SMS', function (request, response) {
    var msgData = {
        message: request.body.Body,
        user: {
            name: "Paul"
        }
    };

    /*
        WS SAY THE WORD
        * tell users what Paul responded
    */
    for (var client in wsClients) {
        wsClients[client].write(JSON.stringify(msgData));
    }

    // success response
    response.setHeader('Content-Type', 'application/json');
    response.writeHead(200);
    response.write(JSON.stringify({data: "sms received", error: 0}, null, "\t"));
    response.end();
});