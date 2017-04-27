require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player1])
    $player_2 = Player.new(params[:player2])
    $game = Game.new($player_1, $player_2)
    redirect to('/play')
    end

  get '/play' do
    @player1 = $player_1
    @player2 = $player_2
    erb(:play)
  end

  get '/fight' do
    @player1 = $player_1
    @player2 = $player_2
    $game.attack(@player2)
    erb(:fight)
  end

  get '/fight-back' do
    @player1 = $player_1
    @player2 = $player_2
    $game.attack(@player1)
    erb(:fight_back)
  end

  run! if app_file == $0
end
