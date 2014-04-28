require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = {  url: ENV['REDIS1'], namespace: "sidekiq_jobaio_production", size: 1 }
end

require 'sidekiq/web'
require 'sidekiq/failures'
run Sidekiq::Web
