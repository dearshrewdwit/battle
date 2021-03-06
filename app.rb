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

  post '/p1_check' do
    $game.attack($game.player2)
    $game.player2.health <= 0 ? (redirect '/lose') : (redirect '/attack')
  end

  get '/attack' do
    @player_1 = $game.player1
    @player_2 = $game.player2
    erb :attack
  end

  post '/attack' do
    redirect '/play_p2'
  end

  get '/play_p2' do
    @player_1 = $game.player1
    @player_2 = $game.player2
    erb :playp2
  end

  post '/p2_check' do
    $game.attack($game.player1)
    $game.player1.health <= 0 ? (redirect '/lose') : (redirect '/attack_p2')
  end

  get '/attack_p2' do
    @player_1 = $game.player1
    @player_2 = $game.player2
    erb :attackp2
  end

  post '/attack' do
    redirect '/play'
  end

  get '/lose' do
    if $game.player1.health > $game.player2.health
       @loser = $game.player2
    else
       @loser = $game.player1
    end
    erb :lose
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
