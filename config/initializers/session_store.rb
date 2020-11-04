if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: '_HelpVan'
else
  Rails.application.config.session_store :cookie_store, key: '_HelpVan'
end
