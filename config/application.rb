require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Default host
    routes.default_url_options = { host: ENV["SITE_URL"] }

    # UUIDs
    config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid
    end

    # Redis cache
    config.cache_store = :redis_cache_store,
                         { url: ENV["REDIS_URL"], db: 0, ssl_params: { verify_mode: OpenSSL::SSL::VERIFY_NONE } }

    # Sidekiq
    config.active_job.queue_adapter = :sidekiq
  end
end
