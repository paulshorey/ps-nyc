var converter = require('sass-convert');
var assign = require('lodash.assign');
var path = require('path');
var through = require('through2');

module.exports = function (options) {
  options = options || {}
  options = assign({ indent: 2 }, options)
  options.from = 'scss';
  options.to = 'scss';
  var stream = through.obj(function (file, encoding, callback) {
    var ext = path.extname(file.path);
    ext = ext.replace(/^\./, "");
    options.from = ext;
    options.to = ext;
    callback();
  });
  return stream.pipe(converter(options))

};