require 'mechanize'
require 'pry'
require 'csv'

print '뭘 찾을까요?? : '
input = gets.chomp

agent = Mechanize.new
agent.user_agent_alias = 'Mac Safari'

page = agent.get('https://www.amazon.com')

search_form = page.form
search_form['field-keywords'] = input
page = search_form.submit

items = page.search('.s-result-item')
items.each do |item|
	title = item.css('h2').text
	price = item.css('.a-offscreen').text
	
	CSV.open('./amazon.csv', 'a+') do |csv|
		csv << [title, price]
	end
end	
puts '성공'

