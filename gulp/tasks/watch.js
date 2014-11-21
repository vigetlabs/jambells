var gulp = require('gulp');

gulp.task('watch', ['browserSync'], function(){
  gulp.watch(['app/views/**', 'app/assets/{stylesheets,javascripts,images,fonts}/**'], ['reload']);
});
