
var static = require('node-static');
var fileServer = new static.Server('./www');

require('http').createServer(function (request, response) {

    request.addListener('end', function () {
        fileServer.serve(request, response, function (err, result) {
            if (err) { // There was an error serving the file 
                console.error("Error serving " + request.url + " - " + err.message);
                response.writeHead(err.status, err.headers);
                response.end();
            } else {
              response.end();
          }
        });
    }).resume();
    request.setTimeout(1000, function () {
        request.abort();
    });

}).listen(2080);

require('http').createServer(function (request, response) {

    request.addListener('end', function () {
        fileServer.serve(request, response, function (err, result) {
            if (err) { // There was an error serving the file 
                console.error("Error serving " + request.url + " - " + err.message);
                response.writeHead(err.status, err.headers);
                response.end();
            } else {
              response.end();
          }
        });
    }).resume();
    request.setTimeout(1000, function () {
        request.abort();
    });

}).listen(443);