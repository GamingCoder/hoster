#Modules
##Usage
Modules will be used to interact with the system.
They hook into the system by use of the EventEmitter build in to node  
The host.io module will listen for `data`-Events and will redirect them to the listening clients.  
Here the actual `CoffeeScript`-Code for this:
```coffeescript
modules[mod.name].on 'data', (data) ->
					@emit 'data', {
						from: mod.name,
						data: data
					}
```
