require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class GuestTest < MiniTest::Test


  def setup

    @songs_1 = Songs.new("Three little birds")
    @songs_2 = Songs.new("It wasnt me")

    @guest_1 = Guests.new("David", 40)
    @guest_2 = Guests.new("Steve", 24)

    @room_1 = Rooms.new("sweet_1", [], 10)
    @room_2 = Rooms.new("Sweet_2", [], 15)
  end

  def test_get_guest_name
    assert_equal("David", @guest_1.guest())
  end

  def test_get_guest_checked_in
    @room_1.guest_checked_in(@guest_1)
    assert_equal(1, @room_1.guest.length)
  end

  def test_guest_check_out
    @room_1.guest_checked_in(@guest_1)
    @room_1.guest_checked_in(@guest_2)
    @room_1.guest_check_out(@guest_1)
    assert_equal(1, @room_1.guest.length)
  end

  
end
