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
    @string = ""
    @number.times do |x|
      @string += @phrase
    end
    "#{@string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1].capitalize} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

end
