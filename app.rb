require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  before do
    @game = Game.current_game
  end

  post '/names' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    @game = Game.new_game(@player1, @player2)
    redirect to('/play')
  end

  get '/play' do
    @player1 = @game.player1
    @player2 = @game.player2
    erb(:play)
  end

  get '/fight' do
    @player1 = @game.player1
    @player2 = @game.player2
    @current_player = @game.current_player
    @attacked_player = @game.attacked_player
    @game.attack
    redirect to('/game-over') if @game.game_over? == true
    @game.switch_turns
    erb(:fight)
  end

  get '/game-over' do
    @current_player = @game.current_player
    @attacked_player = @game.attacked_player
    erb(:game_over)
  end

  run! if app_file == $0
end
