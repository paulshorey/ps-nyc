// ENV
process.env.PORT = process.env.PORT || 1080;
console.log('Please open browser to http://localhost:'+process.env.PORT);

// MODULES
const http = require('http');
const path = require('path');
const pug = require('pug');
const express = require('express');
const express_parser = require('body-parser');
const api = express();
api.use(express.static('public'));
api.use(express_parser.json({
	limit: '50mb',
	parameterLimit: 10000,
	extended: true
}));
api.use(express_parser.urlencoded({
	limit: '50mb',
	parameterLimit: 10000,
	extended: true
}));


// MODEL
const make_model = function(){
    let model = {
        webmaster: 'Paul',
        visitor: ""
    };
    for (let a in arguments) {
        model = Object.assign(model, arguments[a]);
    }
    return model;
};


// GETs
const get_urls = {
    "/": pug.compileFile(__dirname+'/public_templates/index.pug'),
    "*": pug.compileFile(__dirname+'/public_templates/404.pug')
};
for (let url in get_urls) {
    api.get(url, function(request, response) {
        response.writeHead(200);
        response.write(get_urls[url](make_model()));
        response.end();
    });
}


// POSTs
const post_urls = {
    "/nicetomeetyou": pug.compileFile(__dirname+'/public_templates/nicetomeetyou.pug')
};
for (let url in post_urls) {
    api.post(url, function(request, response) {

        // check
        if (!request.body.visitor) {
            response.writeHead(400);
            response.write("Error: expecting, but did not receive: POST data with property of .visitor");
            response.end();
        }

        // serve
        response.writeHead(200);
        response.write(post_urls[url](make_model({ visitor: request.body.visitor })));
        response.end();
    });
}


// GO
var httpServer = http.createServer(api);
httpServer.listen(process.env.PORT);