require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player1])
    $player_2 = Player.new(params[:player2])
    redirect to('/play')
    end

  get '/play' do
    @player1 = $player_1.name
    @player2 = $player_2.name
    @hp_player1 = $player_1.hp
    @hp_player2 = $player_2.hp
    erb(:play)
  end

  get '/fight' do
    @player1 = $player_1.name
    @player2 = $player_2.name
    @hp_player1 = $player_1.hp
    @hp_player2 = $player_2.hp
    erb(:fight)
  end

  run! if app_file == $0
end
