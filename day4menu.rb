#Parker and Willard Cafetria Code!

# Lunch Lady
# User Experience:
def welcome
  print "
  Welcome to the Church and State Cafeteria...
  The typical meal comes with a main entree and 2 side items.
  Would you like to hear our entree selection?"
  if yn_input
    entree
  else
    puts "Thanks for stopping by."
  end
end

def yn_input
  puts "Y/N"
  input = gets.chomp.upcase
  return true if input == 'Y'
end

# def print_menu(food)    
# I think this method needs to define set values for input!!!!
#   food.length.times do |choice_number|  # Going to need a way to quantify how manu menus to output.
#     puts "#{(choice_number + 1).to_s}. #{food[(choice_number + 1).to_s][0]} 
#     - #{food[(choice_number + 1).to_s][1]}
#     - #{food[(choice_number + 1).to_s][2]}"
#   end 
# end




def entree
  @menu['entree'].length.times do |number|
    puts "#{@menu['entree'][(number)]}    $ #{@menu['entree_price'][(number)]}"
  end
end

def side
  @menu['side'].length.times do |number|
    puts "#{@menu['side'][(number)]}    $ #{@menu['side_price'][(number)]}"
  end
end

@menu = {
  'entree' => ['Fried Chicken', 'Roast Turkey', 'Meat Loaf', 'Chicken Pot Pie', 'Daily special'],
  'side' => ['Baked Potatoe', 'Green Salad', 'Cup of Fruit', 'Mac and Cheese'],
  'entree_price' => [11.50, 12.50, 8.80, 9.95, 7.00],
  'side_price' => [2.50, 2.50, 2.50, 2.50]
}
# puts "#{@menu['entree'][0..3]} #{@menu['entree_price'][0..3]}" #diag
# puts "#{@menu['side'][0..3]} #{@menu['side_price'][0..3]}" # diag

# puts "Test" # diag

# @menu.length.times do |number|
#   puts "#{@menu[(number)]}"






# First, choose an entree.
#   Here is a list of entrees you may choose from:"
#         Meat Loaf
#         Chicken Pot Pie
#         etc.

#   Second, choose two side items.
#     Here is a list of side items to choose from:
#         Taters
#         beans
#         mac and cheese
#         etc

#   Great, You ordered Meat Loaf with beans and taters.

#   You owe $12.35.

#   Thank you. Enjoy your meal!

# Pseudocode:

#   Build your hash:

#     Build a single hash variable (@menu) that will contain all of the menu data. Inside the menu hash, you should include two more hashes, one for the entrees and one for side items. Inside the entree and side item hashes, you should have the key values be the names of the items and the values be an array that contains a short description of the item and the item's price. Begin with 3-5

#   Get the user's entree choice.
#     Prompt the user to choose from the entree menu.
#     Have the menu be displayed (with brief descriptions and price) by referencing the menu hash (use the cheat sheet as a reference if necessary).

#   Get the user's first side item choice.
#     Prompt the user to choose from the side item menu.
#     Have the menu be displayed (with brief descriptions and price) by referencing the menu hash (use the cheat sheet as a reference if necessary).

#   Get the user's second side item choice.
#     Prompt the user to choose from the side item menu.
#     Have the menu be displayed (with brief descriptions and price) by referencing the menu hash (use the cheat sheet as a reference if necessary).

#   Repeat the user's choices to the user and tell them the total of how much they owe.


# Bonuses:
  
#   - Allow the user to add-on additional side items.
#   - Create a seperate lunch and dinner options. The first question to the user could be whether they are here for lunch or dinner. Then they will be able to choose from the appropriate menus. (This will require new hashes to be added inside of the menu hash)
#   - Have the user begin with a limited amount of money in their wallet. Don't allow them to order more than they can pay for. Tell them the remaining value in their wallets after they purchase their meal.




welcome


