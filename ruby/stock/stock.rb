require 'stock_quote'


DATA.each do |company|
	company.chomp! # .chomp! => '\n' 삭제.
	stock = StockQuote::Stock.quote(company)

	puts "#{stock.name} 의 가격은 $ #{stock.l}"
end

__END__
aapl
tsla
msft
fb
googl
