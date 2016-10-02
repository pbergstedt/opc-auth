
##Script [opc-auth.rb]
------------
A simple ruby script to set the auth cookie for REST API access to the Oracle
Compute Cloud.  

##Requirements
------------
* Ruby 2.x for the main Ruby script
* gems: rest-client (https://github.com/rest-client/rest-client)
* Tested on CentOS / RHEL / 6.7 or higher, OS X 10.11.x

##Attributes
----------
The following environment variables need to be set:

``` ruby
# environment variable
$export opc-pass=(password for user accessing the REST API)

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
