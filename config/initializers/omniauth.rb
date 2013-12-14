# Omniauth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do


#must move this out

APP_ID = "524588784306811"
APP_SECRET = "abc061e48c6cd363c44b99920775d4e0"

# provide :developer unless Rails.env.production?
provider :facebook, APP_ID, APP_SECRET



end
# OmniAuth.config.full_host = "http://localhost:3000"