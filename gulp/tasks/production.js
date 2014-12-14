var gulp      = require('gulp');
var uglify    = require('gulp-uglify');
var minifyCSS = require('gulp-minify-css');

gulp.task('production', function() {
  // Uglify JS
  gulp.src('./priv/static/js/app.js')
    .pipe(uglify())
    .pipe(gulp.dest('./priv/static/js'));

  // Minify CSS
  gulp.src('./priv/static/css/app.css')
    .pipe(minifyCSS())
    .pipe(gulp.dest('./priv/static/css'));
});
