if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: '_HelpVan', domain: 'helpvan-front.herokuapp.com'
else
  Rails.application.config.session_store :cookie_store, key: '_HelpVan'
end
