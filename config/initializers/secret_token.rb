# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'
def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    File.read(token_file).chomp
  else
    token = SecureRandom.hex(64)
    File.write(token_file,token)
  end
end
SampleApp::Application.config.secret_key_base = '7a28ff44ca261a0d562b0cf9acf5b2c00910fdd75d48ca2a1e9c0d37bf13d9eb151cfcf46d249d9c71f66aa3758ab1ad130af33278cc97cb7dd946dc04a7ab5c'