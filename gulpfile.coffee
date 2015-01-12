gulp = require "gulp"
coffee = require "gulp-coffee"
concat = require "gulp-concat"

gulp.task "coffeeify", ->
	return gulp.src "coffee/*.coffee"
		.pipe coffee bare: true
		.pipe concat "app.js"
		.pipe gulp.dest "js"

gulp.task "watch", ->
	return gulp.watch "coffee/*.coffee", ["coffeeify"]