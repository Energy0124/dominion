require 'spec_helper'

describe Market do
  
  it 'should execute' do
    game, player, turn = GameFactory.build
    turn.execute Market.new
    turn.player.hand.size.should == 6
    turn.number_actions.should == 2
    turn.number_buys.should == 2
    turn.treasure.should == 1
  end
  
end