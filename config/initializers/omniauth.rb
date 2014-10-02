OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['EXPENSES-TRACKER-FB-APP-ID'], ENV['EXPENSES-TRACKER-FB-APP-SECRET']
end
