require 'httparty'
require 'nokogiri'

key = ['#KOSPI_now','#KOSDAQ_now','#KPI200_now']
url = 'http://finance.naver.com/sise/'
response = HTTParty.get(url)
text = Nokogiri::HTML(response.body)

key.each do |keyy|
	keyword = text.css(keyy)
	puts keyword.text
end
