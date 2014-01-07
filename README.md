#Hoster [![travis](https://travis-ci.org/GamingCoder/hoster.png?branch=master)](https://travis-ci.org/GamingCoder/hoster)
##What is that?
Hoster is a simple modular Host Controller. It can be used to get data like network usage, cpu and ram stats and many other things. You can also use it to control the host its running on.

##Install
```bash
$ npm install hoster
```
##Commands
You can find documentation about all commands at the [docs page](https://github.com/GamingCoder/hoster/blob/master/docs/commands.md)

##Usage

You can find usage instructions under https://github.com/GamingCoder/hoster/tree/master/docs  
Or go to:
- [Standalone Use](https://github.com/GamingCoder/hoster/blob/master/docs/standalone.md)
- [In-App Use](https://github.com/GamingCoder/hoster/blob/master/docs/app.md)

##Client(1) vs. Server(0)-Mode
###Client
- + Connect to centralized Server
	- + Easy to administrate
	- - Single Point of Failure
	- - Insecure: Same Password for all clients

###Server
- + Secure: Random Password
	- + Secure
	- - You have to store password on external Server

##Module-List
