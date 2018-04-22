class Guests

attr_reader(:guest, :age)

  def initialize(guest, age)
    @guest = guest
    @age = age
  end

  def guest__name
    return @guest
  end

end
