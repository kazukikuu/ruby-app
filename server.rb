require 'webrick'

config = { BindAddress:  "127.0.0.1", Port: 3000, DocumentRoot: "." }

s = WEBrick::HTTPServer.new(config)

s.mount('/', WEBrick::HTTPServlet::FileHandler, 'app/views/index.html.erb')
s.mount('/next', WEBrick::HTTPServlet::FileHandler, 'app/views/next.html.erb')
s.start