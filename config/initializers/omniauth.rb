OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '149982975195961', 'd16c0394875c448d9cfed4efbbee1e32'
end