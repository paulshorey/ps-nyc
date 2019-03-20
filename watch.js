const chokidar = require('chokidar');
const child_process = require('child_process');

/*
    Watch folder for changes:
        ./docs
    Execute shell command:
        npm run docs
*/
const docs_compile_function = function () {
    console.log('COMPILE the DOCS');
    child_process.exec('npm run docs');
};
let docs_compile_timeout;
chokidar.watch('./docs', {ignored: /(^|[\/\\])\../}).on('all', (event, path) => {

    clearTimeout(docs_compile_timeout);
    docs_compile_timeout = setTimeout(docs_compile_function, 1500);

});