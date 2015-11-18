OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 523332807825030, '010bf989ae9dd0933c7b7d674e857af2'
  
end