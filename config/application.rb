require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BibliotecaAPI
  class Application < Rails::Application
    # Adicione esta linha para alterar o diretório de cache do Sprockets
    config.assets.configure do |env|
      env.cache = Sprockets::Cache::FileStore.new(Rails.root.join('tmp', 'custom-cache'))
    end
  end
end

