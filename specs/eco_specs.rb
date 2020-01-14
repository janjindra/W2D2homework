require('minitest/autorun')
require('minitest/reporters')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestEco < MiniTest::Test

  def setup


  end

end
