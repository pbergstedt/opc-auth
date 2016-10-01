require 'net/http'
require 'http-cookie'
require 'rest-client'
require 'uri'
require 'json'

# Setup user and password for REST call to obtain cookie data
user = '/Compute-name/name@domain.com'
pass = ENV['opc_pass']
head = 'application/oracle-compute-v3+json'
url = 'https://api-z17.compute.us2.oraclecloud.com/authenticate/'
auth = "{\"user\":\"#{user}\",\"password\":\"#{pass}\"}"

# Get authenication cookie for REST API calls
resource = RestClient::Request.new(
  :method => :post,
  :url => url,
  :payload => auth,
  :headers => { :accept => :text, content_type: head },
)
response = resource.execute

# Set the variable to so auth cookie is in the correct format
rawcookie = response.cookies['nimbula']
cookie = "nimbula=#{rawcookie}; Path=/; Max-Age=1800"

# Code to use the cookie goes here...
