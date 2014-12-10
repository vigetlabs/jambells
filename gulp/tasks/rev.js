var gulp = require('gulp');
var rev  = require('gulp-rev');

gulp.task('rev', function() {
  gulp.src('./priv/static/js/app.js')
    .pipe(rev())
    .pipe(gulp.dest('./priv/static/js'))

  gulp.src('./priv/static/css/app.css')
    .pipe(rev())
    .pipe(gulp.dest('./priv/static/css'))
});
