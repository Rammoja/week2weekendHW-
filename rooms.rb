class Rooms

  attr_reader :guest, :price, :room

  def initialize(room, guest, price)
    @room = room
    @guest = []
    @price = price
  end


  def guest_checked_in(guest)
    @guest << guest
  end

  def guest_check_out(guest)
    @guest.delete(guest)
  end

  
end
