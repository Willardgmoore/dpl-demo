#Parker and Willard Cafetria Code!

# Lunch Lady
# User Experience:
def welcome
print "
  Welcome to the Church and State Cafeteria...
  The typical meal comes with a main entree and 2 side items.
  Would you like to hear our entree selection?"
  user_input
end

def user_input

end

def entree
end

def sides
end

def price
end


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

@menu = {
  'entree' => ['Fried Chicken', 'Roast Turkey', 'Meat Loaf', 'Chicken Pot Pie'],
  'side' => ['Baked Potatoe', 'Green Salad', 'Cup of Fruit', 'Mac and Cheese'],
  'entree_price' => [11.50, 12.50, 8.80, 9.95],
  'side_price' => [2.50, 2.50, 2.50, 2.50]
}
puts "#{@menu['entree'][0..3]} #{@menu['entree_price'][0..3]}"
puts "#{@menu['side'][0..3]} #{@menu['side_price'][0..3]}"

puts "Test"




