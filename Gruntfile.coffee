module.exports = (grunt) ->
    grunt.initConfig(
        pkg: grunt.file.readJSON('package.json')
        watch:
        	files: ['Gruntfile.coffee', 'example/src/js/**/*.coffee']
        sass:
        	dist:
        		options:
        			style: 'expanded'
        		files:
        			'example/assets/css/style.css': 'example/src/sass/**/*.scss'
        coffee:
            files:
                src: ['example/src/js/**/*.coffee']
                dest: 'example/assets/js/script.js'
    )
    
    grunt.loadNpmTasks('grunt-contrib-coffee')
    grunt.loadNpmTasks('grunt-contrib-watch')
    grunt.loadNpmTasks('grunt-contrib-sass')
    
    grunt.registerTask('default', ['coffee'], ['watch'], ['sass'])
