Idsimple::Rack.configure do |config|
  config.app_id = ENV["IDSIMPLE_APP_ID"]
  config.signing_secret = ENV["IDSIMPLE_SIGNING_SECRET"]
  config.api_key = ENV["IDSIMPLE_API_KEY"]
  config.redirect_to_authenticate = ENV["REDIRECT_TO_AUTHENTICATE"] == "false" ? false : true
end
