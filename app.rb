require 'sinatra/base'
require './lib/player'

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
		erb :play
	end

	get '/attack' do
		$player_1.attack($player_2)
	  erb :attack
	end

end
