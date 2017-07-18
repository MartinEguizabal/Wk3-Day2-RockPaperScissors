require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game')

get '/' do
  erb(:output)
end

get '/rules' do
  erb(:rules)
end

get '/letsplay/:input1/:input2' do
  @p1_input = params[:input1]
  @p2_input = params[:input2]
  game = Game.new(@p1_input, @p2_input)
  @game_output = game.result
  erb(:output)
end