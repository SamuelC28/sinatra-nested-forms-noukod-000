require './environment'

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
	         @pirate = Pirate.new pirate
	 	       erb :show
	      end
    end
  end
end
