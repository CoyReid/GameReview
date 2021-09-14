class GamesController < ApplicationController
 
  get '/games/nintendo' do
    serialize(Game.nintendo)
  end
  
  get '/games/xbox' do
    serialize(Game.xbox)
  end
  
  get '/games/playstation' do
    serialize(Game.playstation)
  end
  
  get '/games/pc' do
    serialize(Game.pc)
  end

end