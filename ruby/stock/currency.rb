require 'eu_central_bank'

def exchange(from, to)
	bank = EuCentralBank.new
	bank.update_rates
	
	bank.exchange(100, from, to)
end

puts "$1 => #{exchange 'USD', 'JPY'}엔"