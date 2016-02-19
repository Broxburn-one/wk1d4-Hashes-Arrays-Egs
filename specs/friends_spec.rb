require( 'minitest/autorun' )
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Rick",
      age: 12,
      monies: 1,
      friends: ["Jay","Keith","Marc", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie"]
      } 
    }
    
    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["soup","bread"]
      } 
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      } 
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Marc"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti"]
      } 
    }

    @person5 = {
      name: "Marc",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      } 
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  # def test_name
  #   assert_equal("Marc", @person5[:name])
  # end

def test_tv_show
  result = tv_show(@person5)
  assert_equal("Scrubs", result)
end

def test_true_for_food
  result = true_for_food(@person5, "spinach")
  assert_equal(true, result)
end

def test_add_friend
   result = add_new_friend(@person5, "Fred")
   assert_equal("Fred", result)
end

def test_remove_friend
  result = remove_friend(@person4, "Jay" )
  assert_equal(["Rick", "Marc"], result)
end

def test_sum_of_money
  result = sum_of_money(@people)
  assert_equal(143, result)
end

def test_loan_money
  result = loan_money(@person4, @person5, 10)
  assert_equal([110,10], result)
end

def test_sum_of_food
  result = sum_of_food(@people)
  assert_equal(["charcuterie", "soup","bread", "ratatouille", "stew","spaghetti","spinach"], result)
end

def test_find_no_friends
  result = find_no_friends(@people)
  assert_equal(['Marc'], result)
end


end