# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nucest_session',
  :secret      => 'fb76439ff27d23a22e948579d9f7999d79b91645b84894ec0ae7be49e036ce48aeec27b50e20ffb5d056b11124452653ac9ec2bdfa15bc91f6256556fadfed63'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
