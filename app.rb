require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  #accepts a name and renders the name backwards
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
    #accepts a number and returns the square of that number
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end

  get "/say/:number/:phrase" do
    #accepts a number and a phrase and returns that phrase in a string the number of times given
    @num = params[:number].to_i
    @string = params[:phrase].to_s
    @phrases = @string * @num
    "#{@phrases}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    #accepts five words and returns a string containing all five words
    @words = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
    "#{words}"
  end

    # get "/:operation/:number1/:number2" do
    #   #accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided
    #
    # end

end
