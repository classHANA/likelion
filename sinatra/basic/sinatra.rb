require 'sinatra'

get '/' do
	"LikeLion"
end

get '/chang2' do
	"오창희님 안녕하세요"
end

get '/welcome/:name' do
	name = params['name']
	"#{name}님 반갑습니다."
end

get '/cube/:num' do
	number = params[:num].to_i
	result = number ** 3
	"#{number}의 세제곱은 #{result}입니다 :)"
end

