class Item

  @@list = []

  attr_accessor :name
  attr_accessor :rank

  def initialize(name, rank)
    @name = name
    @rank = rank
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.sort()
    sorted_array = @@list.sort_by! { |item| item.rank }
    # binding.pry
  end

  def self.clear()
    @@list = []
  end

  def self.find(name)
  end

end
