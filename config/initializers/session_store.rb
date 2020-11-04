if Rails.env == 'production'
  Rails.application.config.session_store :redis_store, {
    server: ENV['redis://redistogo:011f3ea2d5060d4b361a0d29fd297e3d@scat.redistogo.com:10473/'],
    expire_after: 1.week
    } 
else
  Rails.application.config.session_store :cookie_store, key: '_HelpVan'
end
