# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_kd_session',
  :secret      => '5233c2a707c5c800991961d3ac4d4c60e63113e0c050ebaf3c74ad98e74da7eaeddb86d2146be41403dbae445efed06ef250a4960a8c22e7673ea1094abc6cc7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
