#Host.io
##What is that?
Host.io is a simple modular Host Controller. It can be used to get data like network usage, cpu and ram stats and many other things. You can also use it to control the host its running on.

##Install
Just the `host.io` libary:  
	npm install host.io --save  
If you want to use hostio install it with:  
	npm install host.io -g

##Usage
	hostio --file "path/to/conf.json"
For example conf files look in examples folder.

###Base Conf-File:
####Standalone Server without password:
{
	"mode": 0,
	"port": 5555,
	"password": "",
	"modules": []
}
####Client without password:
{
	"mode": 1,
	"password": "",
	"host": "wss://echo.websocket.org",
	"modules": []
}