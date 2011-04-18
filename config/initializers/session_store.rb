# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_data_entry_screen_project_session',
  :secret      => 'e6c2079b574a42e905e6bf3a846a3cd0d944b12c0875ad65aecba7d1903709b1f463c2905eada3556aa037386bd1449c5daa80ef844430afa269450d471d110c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
