var gulp   = require('gulp');
var uglify = require('gulp-uglify');

gulp.task('compress', function() {
  gulp.src('./priv/static/js/app.js')
    .pipe(uglify())
    .pipe(gulp.dest('./priv/static/js'))
});
