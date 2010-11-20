Rails.configuration.middleware.use OmniAuth::Builder do
  Rails.configuration.providers.each do |config|
    provider config[:provider].to_sym, config[:key], config[:secret]
  end
end if Rails.configuration.providers