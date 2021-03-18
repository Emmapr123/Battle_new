require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
	enable :sessions
	set :sessions, true
	set :session_secret, 'Snake'

	get '/' do
		'Testing infrastructure working!'
		erb :index
	end

	post '/names' do
		$player_1 = Player.new(params[:player_1])
	  $player_2 = Player.new(params[:player_2])
		redirect to('/play')
	end

	get '/play' do
		@player_1 = $player_1.name
		@player_2 = $player_2.name
		erb :play
	end

	get '/attack' do
	  @player_1 = $player_1.name
	  @player_2 = $player_2.name
	  erb :attack
	end

end
