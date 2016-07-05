# Work in progress

# gulp-sassbeautify
beautify sass and scss  with gulp

## Install
```bash
npm install gulp-sassbeautify --save-dev
```

## Usage
```js
var gulp = require('gulp');
var sassbeautify = require('gulp-sassbeautify');

gulp.task('beautify-scss', function () {
  gulp.src('src/**/*.scss')
    .pipe(sassbeautify())
    .pipe(gulp.dest('src'))
})
```