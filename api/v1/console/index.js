exports.module = process.console = require('./src/console.js').module;




// test
process.app.get('/v1/console/test', function(request, response) {
    process.console.log('get /v1/console/test');
    process.console.info('get /v1/console/test');
    process.console.warn('get /v1/console/test');
    process.console.error('get /v1/console/test');

    var domain = request.protocol + '://' + request.get('host');

    response.writeHead(200);
    response.write("Hello API console. My IP is: "+domain);
    response.end();

});