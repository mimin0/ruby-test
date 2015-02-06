# Install this the SDK with "gem install dropbox-sdk"
require 'dropbox_sdk'

# Get your app key and secret from the Dropbox developer website
APP_KEY = '559q7msie8qo8n5'
APP_SECRET = '6pr3in0pe9pli7e'
ACCESS_TYPE = 'app_folder'

flow = DropboxOAuth2FlowNoRedirect.new(APP_KEY, APP_SECRET)

authorize_url = flow.start()

# raw_token = File.readlines("dr_token.txt")
# puts raw_token

# if raw_token.nil?
#   # Have the user sign in and authorize this app
#   puts '1. Go to: ' + authorize_url
#   puts '2. Click "Allow" (you might have to log in first)'
#   puts '3. Copy the authorization code'
#   print 'Enter the authorization code here: '
#   code = gets.strip
#
#   # This will fail if the user gave us an invalid authorization code
#   access_token, user_id = flow.finish(code)
#
#   client = DropboxClient.new(access_token)
#   puts "linked account:", client.account_info()
#   puts "access_token:" + access_token
#
#   def save_token (access_token)
#     File.open("dr_token.txt", 'w') do |f|
#       f.puts(access_token)
#     end
#     puts 'The token file was updated!'
#   end
#
#     save_token(access_token)
#
#   end

client = DropboxClient.new("QjfO-7lIaL0AAAAAAAAAFUrPygiilirwQ6fD8XyxOOPRMVxLdSNhBOi1_Ng8Zu1P")

file = open('dr_token.txt')
response = client.put_file('/magnum-opus3.txt', file)
puts "uploaded:", response.inspect

list_files = client.metadata(path='/', file_limit=500, list=nil, hash=nil, rev=nil)

puts "list of data ", list_files
