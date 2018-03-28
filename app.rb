require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  #accepts a name and renders the name backwards
  get "/reversename/:name" do
    @reverse = params[:name].reverse!
    #
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
    @phrase = @string * @num
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    #accepts five words and returns a string containing all five words
    @sentence = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    #
    # @words = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    # @sentence = @words.join(' ')
    # "#{@sentence}."

  end

    get "/:operation/:number1/:number2" do
      # accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      operation = params[:operation]

      while @num1 != nil && @num2 != nil
        if operation == 'add'
          @num1 + @num2
        elsif operation == 'subtract'
          @num1 - @num2
        elsif operation == 'multiply'
          @num1 * @num2
        elsif operation == 'divide'
          @num1 / @num2
        end
      end 
    end


end
