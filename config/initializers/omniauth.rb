OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 1710890525795843, '4e7b71d3271b2be5de6d149e122a5844'
end