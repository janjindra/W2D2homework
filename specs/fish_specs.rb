require('Minitest/autorun')
require('Minitest/reporters')
require_relative('../fish.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new


class TestFish < MiniTest::Test

  def setup
@fish1 = Fish.new("Nemo")

  end

def test_fish_name
  assert_equal("Nemo",@fish1.name)
end 

end
