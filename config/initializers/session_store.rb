# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_achiever_session',
  :secret      => 'ffbacbf6e212b4821758cd27743dacebca88f889ad3104ddfd70adb4ca46317aee2e74c12b3f729948bc60fff8f77ea63c21a0fc2874bc6a7e1660fe82623f75'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
