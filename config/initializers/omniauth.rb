OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['EXPENSES_TRACKER_FB_APP_ID'], ENV['EXPENSES_TRACKER_FB_APP_SECRET']
end
