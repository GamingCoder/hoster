_ = require 'underscore'

process.setMaxListeners 0
{EventEmitter} = require 'events'
module.exports = class Ctrl extends EventEmitter
	constructor: (@opts) ->
		@opts.port = parseInt @opts.port ?= 5555
		@opts.password ?= ""
		@opts.mode = parseInt @opts.mode
		console.log typeof @opts.modules
		@opts.modules ?= []
		if typeof @opts.modules is not Array
			@opts.modules = []
		
		if @opts.mode is 1 and @opts.host
			@opts.mode = 1

			#Client code
			socket = require('socket.io-client') @opts.host
			socket.on 'connect', ->
				@on 'data', (data) -> socket.emit 'data', data
			socket.on 'disconnect', ->
				thow new Error 'Lost Connection'
		else
			@opts.mode = 0

			#Server code
			io = require('socket.io').listen @opts.port
			console.log "WebSocketServer running on Port %d", @opts.port
			io.sockets.on 'connection', (socket) ->
				socket.set 'auth', false, ->
				socket.on 'set auth', (auth) -> socket.emit 'auth', {'auth': auth}
				socket.on 'auth', (data) ->
					if data is @opts.password
					then socket.set 'auth', true, ->
					else socket.set 'auth', false, ->
				@on 'data', (data) ->
					socket.get 'auth', (err, auth) ->
						throw err if err
						socket.emit 'data', data if auth is true

		#Spawn modules
		modules = {}
		for mod in @opts.modules
			if _.has mod, "name" and _.has mod, "path"
				mod.options ?= {}
				modules[mod.name] require(mod.path) options
				modules[mod.name].on 'data', (data) ->
					@emit 'data', {
						from: mod.name,
						data: data
					}
				console.log 'Loaded module %s', mod.name
			else
				console.log 'Could not load module %s from path %s', mod.name, mod.path