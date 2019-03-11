var pro = process;
process.inc = {};
process.inc.express = require('express');
process.inc.express_parser = require('body-parser');
process.fs = require('fs');
process.http = require('http');
process.https = require('https');
process.url = require('url');
process.crypto = require('crypto');
process.chrono = require('chrono-node');
// env (settings)
process.env.PATH = __dirname;
// app (express)
process.app = process.inc.express();
process.app.use(process.inc.express_parser.json({
    limit: '50mb',
    parameterLimit: 10000,
    extended: true
}));
process.app.use(process.inc.express_parser.urlencoded({
    limit: '50mb',
    parameterLimit: 10000,
    extended: true
}));
process.app.use(process.inc.express.static('api_public'));
process.app.disable('trust proxy');
process.app.use(function (request, response, next) {
    var referrer = process.url.parse(request.headers.referer || '', true, true).hostname;
    response.setHeader('Access-Control-Allow-Origin', '*'); // CHANGE THIS BEFORE ADDING SENSITIVE DATA!
    response.setHeader('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,OPTIONS');
    response.setHeader('Access-Control-Allow-Headers', 'Content-Type, Cache-Control, Pragma, Authorization, Content-Length, X-Requested-With, X-Host');
    if ('OPTIONS' == request.method) {
        response.writeHead(200);
        response.end();
        return;
    } else {
        next();
        return;
    }
});
// secrets
process.secret = require('../secret/all.js'); // not on GitHub!


////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
// CONSOLE
// replace standard {console.log} with advanced {process.console.log}, which distributes via webslocket connection to a self-spawned html app.
process.console = require("./api/v1/console").module;


////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
// CHAT
// Relay between phone number SMS text and websocket clients.
require('./api/v1/chat');


////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
// JOBS
// Accept job listings from APIFY crawler, store in DB, and respond to fornt-end requests with JSON data
require('./api/v1/jobs');


////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
// START API SERVER
var httpServer = process.http.createServer(process.app);
httpServer.listen(1080);
// var httpsServer = process.https.createServer({key: process.fs.readFileSync('/etc/letsencrypt/live/api.paulshorey.com/privkey.pem', 'utf8'), cert: process.fs.readFileSync('/etc/letsencrypt/live/api.paulshorey.com/fullchain.pem', 'utf8')}, process.app);
// httpsServer.listen(1443);