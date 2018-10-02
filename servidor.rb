require 'sinatra'
require 'json'

set :bind, '0.0.0.0'

get '/hola' do
	a = {}
	a[:nombre]="Eligardo"
	a.to_json
end

get '/' do
	"Home"
end
