require 'sinatra'
require './song.rb'
require 'sinatra/reloader' if development?

set :bind, '0.0.0.0'

get '/' do
    @titulo = "La página principal contiene..."
    erb :home
end

get '/contacto' do
    @correo = "elcruzma@ittepic.edu.mx"
    erb :contacto
end

get '/acercade' do
    @nombre = "Eligardo Cruz Marin"
    erb :acercade
end

get '/clientes' do
    @clientes = (1..20).to_a
    erb :clientes
end

get '/canciones' do
    @canciones = Song.all
    erb :canciones
end

not_found do
    erb :not_found
end