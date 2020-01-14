class River

  attr_accessor :name

def initialize (name)
  @name = name
  @fish_array = []
end


def fish_count
  return @fish_array.length
end

def add_fish_to_water(fish)
  @fish_array.push(fish)
end

def remove_fish_from_water(fish)
  if @fish_array.length != 0
    @fish_array.delete(fish)
  else return "No fish in the river!"
  end
end

end
