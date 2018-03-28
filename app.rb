require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = name.split('') = paramas[:name].reverse!
    reverse = []

    @name.each do |char|
      @reversename = (reverse.unshift(char)).join('')
    end 
    "#{@reversename}"
  end

end
