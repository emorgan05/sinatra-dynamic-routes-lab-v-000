require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    "Your name must be #{@name}!"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "The square of #{params[:number]} is #{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do |x|
      "My catchphrase is #{@phrase}!"
    end
    binding.pry
  end
end
