var gulp = require('gulp');
var sassbeautify = require('./index');

gulp.task('default', function () {
  gulp.src('test/input/**/*.{scss,sass}')
    .pipe(sassbeautify())
    .pipe(gulp.dest('test/result'))
})