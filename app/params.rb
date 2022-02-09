require 'uri'
require 'rack'

class Params
def parameter(url)
ary = URI.parse(url)
query = Rack::Utils.parse_nested_query(ary.query)
p query #=> {"name"=>"taro"}
end
end

params = Params.new

params.parameter('http://localhost:3000/a?name=taro')