require 'rails_helper'

describe Zombie do 
  it 'is invalid without a name' do 
    zombie = Zombie.new
    zombie.should_not be_valid
  end

  it "has a name that matches 'Ash Clone'" do 
    zombie = Zombie.new(name: "Ash Clone 1")
    zombie.name.should match(/Ash Clone \d/)
  end

  it 'include tweets' do 
    tweet1 = Tweet.new(status: 'Uuuhhh')
    tweet2 = Tweet.new(status: 'Arrrggg')
    zombie.tweets.should include(tweet1)
    zombie.tweets.should include(tweet2)
  end

  it 'starts with two weapons' do 
    zombie = Zombie.new(name: 'Ash')
    zombie.should have(2).weapons
    zombie.should have_at_least(2).weapon
    zombie.should have_at_most(2).weapon
  end

  it 'changes the number of Zombie' do 
    zombie = Zombie.new(name: 'Ash')
    expect { zombie.save }.to change {Zombie.count }.by(1)
  end

  it 'raises an error if saved without a name' do 
    zombie = Zombie.new
    expect { zombie.save! }.to raise_error(
      ActiveRecord::RecodInvalid
    )
  end

  it 'responds to name' do 
    should respond_to(:name)
  end

  it 'responds to name' { should respond_to(:name)}

  it { should respond_to(:name) }

  it { subject.name.should == 'Ash' }

  its(:name) { should == 'Ash'}

  its(:weapons) { should include(weapon) }

  its(:brain) { should be_nil }

  its('tweets.size') { should == 2 }

end