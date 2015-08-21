#Parker and Willard Cafetria Code!

# Lunch Lady
# User Experience:
@ticket = []
@ticket_cost = []

def welcome
  print "
  Welcome to the Church and State Cafeteria...
  The typical meal comes with a main entree and 2 side items.
  Would you like to hear our entree selection?  'Y/N'
  "
end

def yes_no_input
  input = gets.chomp.upcase
  return true if input == 'Y'
  return false if input =='N'
else
  puts "this is a 'Y'/'N' question! How could you mess that up?"
  yes_no_input
end

def list_entree
  @menu['entree'].length.times do |number|
    puts "#{@menu['order'][(number)]}. #{@menu['entree'][(number)]}  $ #{@menu['entree_price'][(number)]}"
  end
end

def list_side
  @menu['side'].length.times do |number|
    puts "#{@menu['order'][(number)]}. #{@menu['side'][(number)]}  $ #{@menu['side_price'][(number)]}"
  end
end

def get_entree#!!! It doesn't look like input is working, wrong syntax???
  #input is text and var is numeric value of what cu desires
  puts "Please select your entree: "
  @get_order = gets.to_i
  puts "#{@menu['entree'][(@get_order)]}"
  @entree_choice = "#{@menu['entree'][(@get_order)]}"
  #  puts "Great, You ordered #{@menu['side'][(var)]} with #{@menu['side'][(var)]} and #{@menu['side'][(var)]}."
  @ticket << @entree_choice
  @ticket_cost << @menu['entree_price'][(@get_order)]
end

def get_side#!!! It doesn't look like input is working, wrong syntax???
  #input is text and var is numeric value of what cu desires
  puts "Please select your entree: "
  @get_order = gets.to_i
  puts "#{@menu['side'][(@get_order)]}"
  @side_choice = "#{@menu['side'][(@get_order)]}"
  #  puts "Great, You ordered #{@menu['side'][(var)]} with #{@menu['side'][(var)]} and #{@menu['side'][(var)]}."
  @ticket << @side_choice
  @ticket_cost << @menu['side_price'][(@get_order)]
end

@menu = {
  'order' => [0, 1, 2, 3, 4, 5],    # I don't think this is being used for anything ##############
  'entree' => ['Chicken', 'Roast Turkey', 'Meat_Loaf', 'Chicken Pot Pie', 'Daily special'],
  'side' => ['Baked Potato', 'Green Salad', 'Cup of Fruit', 'Mac and Cheese'],
  'entree_price' => [11.50, 12.50, 8.80, 9.95, 7.00],
  'side_price' => [2.50, 2.50, 2.50, 2.50]
}

def order_entree
  list_entree
  get_entree
  puts "Would you like another entree?"
  if yes_no_input
    order_entree
  else order_side
  end
end

def order_side
  puts "Our side items are: "
  list_side
  get_side
  puts "Would you like another side?"
  if yes_no_input
    order_side
  end
end

def run     # This is supposed to organize the whole project in an overview and then be called.
  welcome
  choice_1 = yes_no_input
  if choice_1
    order_entree
  elsif  choice_1 == false
    puts "Maybe a side then?"
    order_side
  else
    puts "Who do you think you are?!? Get outta here!"
  end
  # puts "Ran if else loop" #diag
  
  total = 0
  @ticket_cost.each do |cost|
    total += cost
  end
  
  puts "You ordered #{@ticket} for #{total} "
end

run 



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