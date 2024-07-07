

APP_NAME = 'HotRails Riccardo Quotes'
APP_DESCRIPTION = 'Taken from ... https://www.hotrails.dev/turbo-rails/turbo-frames-and-turbo-streams'
APP_VERSION = File.read('VERSION').chomp

# https://guides.rubyonrails.org/configuring.html#rails-environment-settings
# ENV["RAILS_CACHE_ID"] and ENV["RAILS_APP_VERSION"] are used to generate expanded cache keys in Rails' caching code.
# This allows you to have multiple separate caches from the same application.
ENV['RAILS_APP_VERSION'] = APP_VERSION

MESSAGGIO_OCCASIONALE = ENV.fetch 'MESSAGGIO_OCCASIONALE', '🤷🏼‍♀️ Messaggio Non datur'

Rails.application.config do |config|
  # https://ricc-hotrails-v2-dev-x42ijqglgq-ew.a.run.app/
  # https://ricc-hotrails-v2-prod-x42ijqglgq-ew.a.run.app/
  config.hosts << "ricc-hotrails-v2-dev-x42ijqglgq-ew.a.run.app"
  config.hosts << "ricc-hotrails-v2-prod-x42ijqglgq-ew.a.run.app"
  config.hosts << "ricc-hotrails-manhouse-dev-x42ijqglgq-ew.a.run.app"
  config.hosts << "ricc-hotrails-manhouse-prod-x42ijqglgq-ew.a.run.app"
  # From ENV..
  config.hosts << ENV['CONFIG_HOSTS1'] if  ENV['CONFIG_HOSTS1']
  config.hosts << ENV['CONFIG_HOSTS2'] if  ENV['CONFIG_HOSTS2']
  # Regexes
  config.hosts << /ricc-hotrails-.*-x42ijqglgq-ew.a.run.app/
  Rails.application.config.hosts << /ricc-hotrails.*\.ew\.a\.run\.app/
end

puts("🌱 DEB: config.hosts: 🌱 #{Rails.application.config.hosts.join ', 🌱 '}")
