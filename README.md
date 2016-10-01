
##Script [opc-auth.rb]
------------
A simple ruby script to set the auth cookie for REST API access to the Oracle
Compute Cloud.  

##Requirements
------------
* Ruby 2.2.x for the main Ruby script
* gems: rubygems, rest-client, json, uri, net/http, http-cookie
* Tested on CentOS / RHEL / 6.7 or higher

##Attributes
----------
The following environment variables need to be set:

``` ruby
# environment variable
opc-pass = (password for accessing the REST API)

```

##Usage
-------
Run script

##Usage Example
--------------
The script can be embedded in a Chef cookbook, or run via any job (i.e. cron)


```
#> ruby opc-auth.rb

```

##License & Authors
-----------------
```
- Authors:: Phil Bergstedt (<phil.bergstedt@gmail.com>)
```
