if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_HelpVan', domain: 'https://jolly-benz-c2004d.netlify.app/'
else
  Rails.application.config.session_store :cookie_store, key: '_HelpVan'
end
