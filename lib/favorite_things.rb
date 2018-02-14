class Item

  @@list = []

  attr_accessor :name
  attr_accessor :rank

  def initialize(name, rank)
    @name = name
    @rank = rank
  end

  def sort()
    @@list.sort
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

  def self.find(name)
  end

end
