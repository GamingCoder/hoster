#Commands
##hoster
`hoster` is the main command. You use it to interact with `hoster` from the cli.
```bash
$ hoster -f /path/to/config.json -p password
```
###Options
- -f --file: Specify the Path to the conf file
- -p --password: Specify the Password to use when connectiong to a host or to authenticate Clients

##hosterccat
`hosterccat` is a client for a `hoster`-Instance in Server-Mode.  
It just dumps all messages it gets to the console.  
Good for testing :)
```bash
$ hosterccat -h http://hosterIP -p password
```
###Options
- -h --host: This option accepts the URI of a `hoster`-Instance
- -p --password: Specify the Password to use when connectiong to a host or to authenticate Clients
