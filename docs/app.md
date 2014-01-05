#In-App
##Install
Install hoster as a module and save it to package.json:
```bash
$ npm install hoster --save
```
##Usage
You just have to require it and pass it the content that would normally be in a config file:
```javascript
var options = {
  "mode": 0,
  "port": 5555,
  "password": "",
  "modules": []
}
var hoster = require('hoster')(options);
```