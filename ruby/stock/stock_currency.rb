require 'stock_quote'
require 'eu_central_bank'

def exchange(from, to, amount)
	amount = amount.to_i if amount.is_a? String
	bank = EuCentralBank.new
	bank.update_rates
	
	amount * bank.exchange(100, from, to)
end

ARGV.each do |company|
	stock = StockQuote::Stock.quote(company)
	puts "#{stock.name} => #{stock.l} / #{exchange 'USD', 'KRW', stock.l}원"
end