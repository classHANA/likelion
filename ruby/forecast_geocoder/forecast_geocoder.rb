require 'geocoder'
require 'forecast_io'

print '어디가 궁금하세요? : '

location = gets.chomp!

loCord = Geocoder.coordinates(location)

ForecastIO.configure do |configuration|
  configuration.api_key = 'c3c46f2ceb471e5d5bf6cd29b5708bfe'
end

forecast = ForecastIO.forecast(loCord[0], loCord[1])

f = forecast.currently

puts f.summary
puts f.apparentTemperature