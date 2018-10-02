require 'sinatra'

set :bind, '0.0.0.0'

get '/empleado/:id' do
    "Valor del id : #{params[:id]}"
end