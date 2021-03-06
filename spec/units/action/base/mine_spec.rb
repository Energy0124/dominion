require 'spec_helper'

describe Mine do
  
  it 'should execute' do
    game, player, turn = GameFactory.build
    copper = Copper.new
    player.hand << copper
    silver = game.silvers.first
    player.stub!(:select_card).and_return(copper, silver)
    turn.execute Mine.new
    game.trash.should == [copper]
    player.hand.should be_include(silver)
    game.silvers.should_not be_include(silver)
  end
  
end