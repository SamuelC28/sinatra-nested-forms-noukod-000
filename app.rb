require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirate/new'
    end

  	post '/ship' do
	      @ship = Pirate.new(params[:ship])

	      params[:ship][:ships].each do |ship|
	         Ship.new ship
	      end

        @ship = Ship.all
        erb :'pirate/new'
    end
  end
end
