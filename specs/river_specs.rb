require('Minitest/autorun')
require('Minitest/reporters')
require_relative('../river.rb')
require_relative('../fish.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new


class TestRiver < MiniTest::Test

  def setup
@river1 = River.new("Amazon")

@fish1 = Fish.new("Moldie")
@fish2 = Fish.new("Foldie")

  end

def test_river_name()
assert_equal("Amazon", @river1.name)
end

def test_fish_count
  assert_equal(0, @river1.fish_count)
end

def test_add_fish_to_water
  @river1.add_fish_to_water(@fish1)
  @river1.add_fish_to_water(@fish2)
  assert_equal(2, @river1.fish_count)
end

def test_remove_fish_from_water
  @river1.add_fish_to_water(@fish1)
  @river1.add_fish_to_water(@fish2)
  @river1.remove_fish_from_water(@fish1)
  assert_equal(1, @river1.fish_count)
end

end
