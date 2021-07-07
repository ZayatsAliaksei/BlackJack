class Man
  attr_accessor :name

  def initialize(name =nil)
    @name = name
    @bank = 100
    @cards = {}
  end

end
