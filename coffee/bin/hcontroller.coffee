commander = require 'commander'
commander
	.version('0.0.1')
	.option('-f --file [path/to/conf.json]', "Conf File")
	.option('-p --password', "Set Password that will override the Password speciefied in the conf-File")
	.parse process.argv

options = {}

if commander.file
	console.log "Loading File %s", commander.file
	fs = require 'fs'
	options = JSON.parse fs.readFileSync(commander.file, "UTF-8").toString()
	options.password = commander.password if commander.password
	
	ctrl = require('../index.js') options
else
	throw new Error 'File not specified. Couldn`t load Host.io'
