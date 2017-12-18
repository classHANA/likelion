require 'geocoder'
require 'forecast_io'
require 'pry'
require 'awesome_print'

def f_to_c(f=0)
	# (화씨 - 32) * 5/9 = 섭씨 
	((f - 32) * 5 / 9).round(1)
end

ForecastIO.configure do |configuration|
  configuration.api_key = '316b59dc6de6bb4d984f417b77db67b7'
end

print '어디가 궁금하세요? : '

location = gets.chomp!

loCord = Geocoder.coordinates(location)

# binding.pry

forecast = ForecastIO.forecast(loCord[0], loCord[1])

f = forecast.currently

puts f.summary
puts f_to_c f.apparentTemperature