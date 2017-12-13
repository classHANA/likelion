require 'mechanize'

agent = Mechanize.new
agent.user_agent_alias = 'Mac Safari'

page = agent.get('https://www.amazon.com')

puts page