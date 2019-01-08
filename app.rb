require './environment'
require_relative 'models/pirate'
require_relative 'models/ship'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

  	post '/ship' do
	      @ship = Ship.new(params[:ship])

	      params[:ship][:pirates].each do |pirate|
	         Pirate.new pirate
	      end
        erb :show
        @pirate = Pirate.all
    end
  end
end
