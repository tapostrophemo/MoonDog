# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_MoonDog_session',
  :secret      => '4776bbb92ba05cc0312310672d36fc072c5686a5377b9346d6d580dcb999f5bcca125ec98a9f66de482b6e5b36b7f18f60f1eb86339e3fda596880ce25b1eab8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
