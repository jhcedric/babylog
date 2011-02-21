# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_babylog_session',
  :secret      => '63c5ad4309af09a4466c84e4952d4d4e7f2ed8675e011df89f723c970e8ed66327e66b05f6a3e4a3b807593a3f8fd06bb1768da4ad175718dda610c87ff44c90'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
