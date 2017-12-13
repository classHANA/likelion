require 'forecast_io'
# require 'typhoeus/adapters/faraday'

# Faraday.default_adapter = :typhoeus
ForecastIO.configure do |configuration|
  configuration.api_key = 'c3c46f2ceb471e5d5bf6cd29b5708bfe'
end

forecast = ForecastIO.forecast(37.501520, 127.039595)

puts forecast