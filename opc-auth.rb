require 'rest-client'

# Setup user and password for REST call to obtain cookie data
user = '/Compute-name/name@domain.com'
pass = ENV['opc_pass']
# Create formated paylod / body
auth = "{\"user\":\"#{user}\",\"password\":\"#{pass}\"}"

# Set header and url
head = 'application/oracle-compute-v3+json'
url = 'https://api-z17.compute.us2.oraclecloud.com/authenticate/'

# Get authenication cookie for REST API calls
resource = RestClient::Request.new(
  :method => :post,
  :url => url,
  :payload => auth,
  :headers => { :accept => :text, :content_type => head },
)
# Execute the rest-client
response = resource.execute

# Set the variable to so auth cookie is in the correct format
rawcookie = response.cookies['nimbula']
cookie = "nimbula=#{rawcookie}; Path=/; Max-Age=1800"

# Code to use the cookie variable goes here...
puts cookie
