require 'sinatra/base'
require_relative './lib/player'


class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    # @player_1 = params[:player_1]
    # @player_2 = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @health1 = $player_1.health
    @health2 = $player_2.health
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @health1 = $player_1.health
    @health2 = $player_2.health
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
