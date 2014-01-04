#Usage inside of an app
You just have to require it and pass it the content that would normally be in a config file
```javascript
var options = {
  "mode": 0,
  "port": 5555,
  "password": "",
  "modules": []
}
var hostio = require('host.io')(options);
```
