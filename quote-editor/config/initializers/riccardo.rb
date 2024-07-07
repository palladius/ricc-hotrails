

APP_NAME = 'HotRails Riccardo Quotes'
APP_DESCRIPTION = 'Taken from ... https://www.hotrails.dev/turbo-rails/turbo-frames-and-turbo-streams'
APP_VERSION = File.read('VERSION').chomp
MESSAGGIO_OCCASIONALE = ENV.fetch 'MESSAGGIO_OCCASIONALE', '🤷🏼‍♀️ Messaggio Non datur'

Rails.application.config do |config|
  # https://ricc-hotrails-v2-dev-x42ijqglgq-ew.a.run.app/
  # https://ricc-hotrails-v2-prod-x42ijqglgq-ew.a.run.app/
  config.hosts << "ricc-hotrails-v2-dev-x42ijqglgq-ew.a.run.app"
  config.hosts << "ricc-hotrails-v2-prod-x42ijqglgq-ew.a.run.app"

  config.hosts << "ricc-hotrails-manhouse-dev-x42ijqglgq-ew.a.run.app"
  config.hosts << "ricc-hotrails-manhouse-prod-x42ijqglgq-ew.a.run.app"
  config.hosts << /ricc-hotrails-.*-x42ijqglgq-ew.a.run.app/
end
