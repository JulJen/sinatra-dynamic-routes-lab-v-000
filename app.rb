require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = params[:name].reverse!
    "#{@reversename}"
    # @name = params[:name].split('')
    # reverse = []
    #
    # @name.each do |char|
    #   @reversename = (reverse.unshift(char)).join('')
    # end
  end

  get "/square/:number" do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @string = params[:phrase].to_s
    @phrases = "#{@string} * #{@num}"
    "#{@phrases}"
  end 

end
