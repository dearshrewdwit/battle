require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/damage_calculator'
require_relative './lib/game'


class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]),Player.new(params[:player_2]))
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player1
    @player_2 = $game.player2
    erb :play
  end

   post '/play' do
    $game.attack($game.player2)
    redirect '/attack'
  end

  get '/attack' do
    @player_1 = $game.player1
    @player_2 = $game.player2
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
