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
    @@list.sort_by! { |item| item.rank }
  end

  def self.validate(name)
    @@list.each do |item|
      if item.name == name
        return "Duplicate. Enter something else."
      else
        return false
      end
    end
  end

  def self.validaterank(rank)
    @@list.each do |item|
      if item.rank == rank
        return "Duplicate. Enter something a different rank."
      else
        return false
      end
    end
  end



    # words_looking_to_match = @name
    # if @@list.map { |a| words_looking_to_match}
    #   "Duplicate. Enter something else."
    # elsif
    #   "it worked"
    # end


  def self.clear()
    @@list = []
  end

  def self.find(name)
  end

end
