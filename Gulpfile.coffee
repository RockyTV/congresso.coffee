gulp = require 'gulp'
del = require 'del'
cjsx = require 'gulp-cjsx'

gulp.task 'cjsx', ->
  gulp.src('app/renderer/app.cjsx')
    .pipe(cjsx({bare: true}))
    .pipe(gulp.dest('app/renderer'))

gulp.task 'default', ['cjsx']
