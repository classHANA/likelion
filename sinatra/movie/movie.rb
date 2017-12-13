require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do
	erb :index
end

get '/movie' do
	#현재 상영작 영화중 하나를 골라서 추천!!!
	@url = 'http://movie.naver.com/movie/running/current.nhn'
	@doc = Nokogiri::HTML(open(@url),nil,'UTF-8')
	@movie_title = Array.new

	@doc.css("ul.lst_detail_t1 dt a").each do |title|
		@movie_title << title.text
	end
	@movie = @movie_title.sample

	p @movie_title
	puts @movie_title

	erb :movie
end