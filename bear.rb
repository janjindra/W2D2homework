class Bear

attr_accessor :name, :type

def initialize(name, type)
@name = name
@type = type
@stomach = []

end

def bear_stomach_fish_count()
  return @stomach.length
end

def bear_eats_fish(fish)
  @stomach.push(fish)
end

def bear_can_roar(can_it)
  if can_it == "yes"
    return "Rooaaar!"
  end
  return "Can't roar!"
end

end
