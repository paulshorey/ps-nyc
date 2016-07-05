var gulp = require('gulp');
// var bower = require('bower');
// var babel = require('gulp-babel');
var scss = require('gulp-sass');
var compass = require('gulp-compass');
// var sh = require('shelljs');
var autoprefixer = require("gulp-autoprefixer");
var concat = require('gulp-concat');
// var uglify = require('gulp-uglify');
// var bower = require('bower-files')();
var jshint = require('gulp-jshint');

var path = {
  scss: {
    src: ['./scss/*.scss', '!./scss/all.scss'],
    dst: './scss'
  },
  css: {
    src: ['./css/*.css', '!./css/all.css'],
    dst: './css'
  },
  js: {
    src: ['./js/*.js', '!./js/all.js'],
    dst: './js'
  }
};


gulp.task('default', ['scss','lint_js']);

// gulp.task('css', ['scss','concat_css']);

// gulp.task('lint', ['lint_js']);

gulp.task('watch', function () {
  gulp.watch(path.scss.src, ['scss']);
  gulp.watch(path.js.src, ['lint_js']);
});


gulp.task('scss', function (done) {
  gulp.src(path.scss.src)
    .pipe(scss({compass:true}))
    .on('error', scss.logError)
    .pipe(autoprefixer({
      browsers: ['last 4 versions'],
      cascade: false
    }))
    .pipe(gulp.dest(path.css.dst))
    .on('end', done);
});
gulp.task('lint_js', function() {
  return gulp.src(path.js.src)
    .pipe(jshint(['.jshintignore']))
    .pipe(jshint.reporter('jshint-stylish', {beep: true}));
});


gulp.task('concat_css', function () {
  return gulp.src(path.css.src)
    .pipe(concat('all.css'))
    .pipe(gulp.dest(path.css.dst));
});
gulp.task('concat_js', function () {
  return gulp.src(path.js.src)
    .pipe(concat('all.js'))
    .pipe(gulp.dest(path.js.dst));
});

