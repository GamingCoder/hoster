#Import test-libaries
expect = require('chai').expect
should = require('chai').should
io = require 'socket.io-client'

#Testing hoster-Libary
describe 'Server (Mode: 0)', ->
	describe 'Port: 5555; Password: ""; Modules: []', ->
		it "should create a Server", (done) ->
			options = {
				mode: 0,
				port: 5555,
				password: "",
				modules: []
			}
			hoster = require('../index.js') options
			done()
		it "should accept connections", (done) ->
			socket = io.connect 'http:localhost:5555'
			expect(socket).to.exist
			socket.on 'connect', -> done()
			done new Error "Could not connect to Server"
