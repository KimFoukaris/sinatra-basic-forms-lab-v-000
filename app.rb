require_relative 'config/environment'

class App < Sinatra::Base

get '/' do
  erb :index
end

link '/' do
  "Click Here To List A Puppy"
  erb :create_puppy
end

get '/new' do
  erb :create_puppy
end

post '/new' do
  puppy_name = params[:name]
  puppy_breed = params[:breed]
  puppy_age = params[:age]
  @puppy = Puppy(name, age, breed)
  erb :display_puppy
end

end
