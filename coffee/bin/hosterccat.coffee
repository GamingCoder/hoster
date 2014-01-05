# Client for the hoster-Server
commander = require 'commander'
commander
	.version('0.0.1')
	.option('-h --host [hostURI]', "URI of a hoster-Host", "http://localhost:5555")
	.option('-p --password', "Set Password that will override the Password speciefied in the conf-File", "")
	.parse process.argv

commander.password ?= ""

#Connect to hoster-Host
io = require 'socket.io-client'
socket = io.connect commander.host
socket.on 'connect', ->
	console.log 'Connected to Server %s', commander.host
	
	socket.emit 'auth', commander.password

socket.on 'auth', (status) ->
	if status is true then console.log 'Auth succsessfull' else console.log 'Auth failed'

socket.on 'data', (data) ->
	console.log data.from + " > " + data.data