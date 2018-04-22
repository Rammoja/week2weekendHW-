require("minitest/autorun")
require("minitest/rg")
require_relative("../songs")

class TestGuests < MiniTest::Test


  def setup
    @songs = Songs.new("bob marley", "shaggy")
  end




end
