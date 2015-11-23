OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 523335384491439, '53e8ca0b14d8499517d3190f1de2bb92'
end