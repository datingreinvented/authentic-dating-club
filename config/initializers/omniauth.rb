# frozen_string_literal: true

Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :google_oauth2,
    Rails.application.credentials.google[:key],
    Rails.application.credentials.google[:secret],
    skip_jwt: true,
  )
end
