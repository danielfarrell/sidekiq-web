require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = {  url: ENV['REDIS_URL'], namespace: ENV['REDIS_NAMESPACE'], size: (ENV['REDIS_SIZE'] || 1) }
end

require 'sidekiq/web'
require 'sidekiq/failures'
run Sidekiq::Web
