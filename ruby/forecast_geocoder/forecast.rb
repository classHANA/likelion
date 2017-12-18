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

forecast = ForecastIO.forecast(37.501520, 127.039595)
c = forecast.currently
# binding.pry => 디버깅 짱짱.
puts "현재 날씨는 #{c.summary} 이고 섭씨 #{f_to_c(c.apparentTemperature)}도 입니다."
