require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HelpVan
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.api_only = false
    config.assets.initialize_on_precompile = false

    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore
    config.middleware.insert_after(ActionDispatch::Cookies, ActionDispatch::Session::CookieStore)

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'http://localhost:3000', 'https://jolly-benz-c2004d.netlify.app/' #replace this url with that of your own heroku client app
        resource '*', :headers => :any, :methods => [:get]
      end
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
