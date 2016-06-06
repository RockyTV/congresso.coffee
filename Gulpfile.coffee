gulp = require 'gulp'
coffeelint = require 'gulp-coffeelint'

gulp.task 'lint', ->
  gulp.src('app/renderer/**/*.cjsx')
    .pipe(coffeelint('coffeelint.json'))
    .pipe(coffeelint.reporter())

gulp.watch('app/renderer/**/*.cjsx', ['lint'])

gulp.task 'default', ['lint']
