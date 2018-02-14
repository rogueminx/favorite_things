require('favorite_things')
require('pry')
require('rspec')

describe("Item")do
  before() do
      Item.clear()
    end

  describe(".all") do
    it("is empty at first") do
      expect(Item.all()).to(eq([]))
    end
  end

  describe("#save") do
     it("saves an item to the list of items") do
       item = Item.new("tacos", 1)
       item2 = Item.new("pancakes", 2)
       item.save()
       item2.save()
       expect(Item.all()).to(eq([item, item2]))
     end
   end

   describe(".sort") do
     it("sorts all items from the list based on rank") do
       item = Item.new("tacos", 2)
       item2 = Item.new("pancakes", 1)
       item.save()
       item2.save()
       expect(Item.sort()).to(eq([item2, item]))
     end
   end

   describe(".validate") do
     it("ensures that you can't repeat input") do
       item = Item.new("tacos", 2)
       item.save()
       item2 = Item.new("tacos", 1)
       expect(Item.validate(item2.name)).to(eq("Duplicate. Enter something else."))
     end
   end

   describe(".validate") do
     it("ensures that you can't repeat input") do
       item = Item.new("tacos", 2)
       item.save()
       item2 = Item.new("cupcake", 1)
       expect(Item.validate(item2.name)).to(eq(false))
     end
   end

  describe(".clear") do
    it("clears all items from the list") do
      item = Item.new("tacos", 1)
      item.save()
      Item.clear()
      expect(Item.all()).to(eq([]))
    end
  end
end
