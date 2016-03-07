var gulp         = require('gulp');
var handleErrors = require('../utils/handle_errors');

gulp.task('static', function() {
  return gulp.src([
      './vendor/components/**/*.css',
      './vendor/components/**/*.png',
      './vendor/components/**/*.jpg',
      './vendor/components/**/*.jpeg',
      './vendor/components/**/*.gif',
      './vendor/components/**/*.svg',
      './vendor/components/**/*.eot',
      './vendor/components/**/*.ttf',
      './vendor/components/**/*.woff',
      './vendor/components/**/*.woff2',
      './vendor/components/**/*.otf'
    ])
    .pipe(gulp.dest('./public/vendor'))
    .on('error', handleErrors);
});
