require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'ship/new'
    end

  	post '/ship' do
	      @ship = Pitate.new(params[:ship])

	      params[:ship][:ships].each do |ship|
	         Ship.new ship
	      end
        
        @ship = Ship.all
    end
  end
end
