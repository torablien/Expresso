OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, 1678008015746156, '4a73adab7b8ca8f3021244078cf90608'
  provider :facebook, 1710890525795843, '4e7b71d3271b2be5de6d149e122a5844'
end