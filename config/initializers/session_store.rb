if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: 'helping-hands-server', domain: 'your-frontend-domain'
else
  Rails.application.config.session_store :cookie_store, key: 'helping-hands-server' 
end
