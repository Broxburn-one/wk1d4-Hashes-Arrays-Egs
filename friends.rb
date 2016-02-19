# 1. For a given person, return their favourite tv show
# 2. For a given person, check if they like a particular food
# 3. Allow a new friend to be added to a given person
# 4. Allow a friend to be removed from a given person
# 5. Find the total of everyone's money
# 6. For two given people, allow the first person to loan a given value of money to the other
# 7. Find the set of everyone's favourite food joined together
# 8. Find people with no friends

# INSANE
# Find the people who have the same favourite tv show

def tv_show(hash)
  return hash[:favourites][:tv_show]
end

def true_for_food(hash, food)
  return hash[:favourites][:things_to_eat].include?(food)
end

def add_new_friend(hash, name)
  hash[:friends] << name
  return hash[:friends].last
end

def remove_friend(hash, name)
  hash[:friends].delete(name)
  return hash[:friends]
end

def sum_of_money(array)
  bag = 0
  array.each do |arr|
     bag += arr[:monies]
  end
  return bag
end


def loan_money(hash1, hash2, int)
  hash1[:monies] = hash1[:monies] - int
  hash2[:monies] = hash2[:monies] + int

  return [hash2[:monies], hash1[:monies]]
end

def sum_of_food(array)
  sum = []
  array.each do |arr|
    sum << arr[:favourites][:things_to_eat]
  end
  return sum.flatten
end


def find_no_friends(people)
  no_friends = []
  people.each do |person|
    if person[:friends].empty? 
      no_friends << person[:name]
    end
  end
  return no_friends
end
