require 'uri'

class Params
def parameter(url)
ary = URI.parse(url)
p ary.query         #=> "name=taro"
end
end

params = Params.new

params.parameter('http://localhost:3000/a?name=taro')