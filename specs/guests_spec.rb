require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")

class TestGuests < MiniTest::Test

  def setup
    @guests = Guests.new("david", "steve")
  end



end
