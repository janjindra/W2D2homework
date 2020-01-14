require('Minitest/autorun')
require('Minitest/reporters')
require_relative('../bear.rb')
require_relative('../fish.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestBear < MiniTest::Test

def setup
@bear1 = Bear.new("Yogi","Grizzly")

@fish1 = Fish.new("Goldie")
@fish2 = Fish.new("Boldie")

end

def test_bear_name
  assert_equal("Yogi",@bear1.name)
end

def test_bear_type
  assert_equal("Grizzly",@bear1.type)
end

def test_bear_can_roar
  assert_equal("Rooaaar!",@bear1.bear_can_roar("yes"))
  assert_equal("Can't roar!",@bear1.bear_can_roar("no"))
end

def test_bear_stomach_fish_count
  assert_equal(0, @bear1.bear_stomach_fish_count)
end

def test_bear_eats_fish
  @bear1.bear_eats_fish(@fish1)
  @bear1.bear_eats_fish(@fish2)
  assert_equal(2, @bear1.bear_stomach_fish_count)
end


end
