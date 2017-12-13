require 'sinatra'

get '/' do
	"<h1>점심빨리먹고싶다</h1>"
end

get '/intro' do
	send_file "intro.html"	
end

get '/outro' do
	@name = "어흥"
	erb :outro
end

get '/lunch' do
	menus = ["20층","편의점","시골집","김밥카페","다이어트"]
	@menu = menus.sample
	erb :lunch
end
