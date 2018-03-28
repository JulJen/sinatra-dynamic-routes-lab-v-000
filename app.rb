require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = paramas[:name].reverse!
    "#{@reversename}"
  end 

end
