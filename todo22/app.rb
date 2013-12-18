require 'bundler'
Bundler.require
#require './lib/time/'
require 'time'

module Birthday
  class Bday_App < Sinatra::Application

    get '/' do

    date = Time.now 
   	@date = date
	@derek = Time.new(1986,8,4)
	if @derek == @date 
		@result = "It's your birthday"
	else
		@result = "Nope!"
	end
    erb :index
    end

  end
end