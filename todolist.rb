require 'pry'

class List
  attr_accessor :name, :item_array 

  def initialize(name)
    @name = name
    @item_array = []
  end

  def display_menu
    while true
      puts """
      What would you like to do?
        1. Display List
        2. Add item
        3. Remove item
        4. Mark an item complete
        5. exit
        """
        choice = gets.chomp
        if choice == '1'
          display_list
        elsif choice == '2'
          puts 'Name of list item: '
          item_name = gets.chomp
          puts 'Add a description: '
          description = gets.chomp
          add_item(item_name, description)
        elsif choice == '3'
          display_list
          puts "Type name of item to have it removed."
          delete_item(gets.chomp)
          #remove item
        elsif choice == '4'
          display_list
          puts "Type name of item to have it marked as completed."
          mark_completed(gets.chomp)
        elsif choice == '5'
          exit
        else
          puts "Error code: id10t"          
          display_menu
        end
      end
    end

    def add_item(name, anything)
      @item_array << Item.new(name, anything)
    end

    def display_list
      @item_array.each do |item|
        puts item.item_name + ' -- ' + item.description
      end
    end

    def delete_item(to_delete)
      @item_array.delete_if {|x| x.item_name == to_delete}
      # a.delete_if {|x| x >= "b" }
    end

    def mark_completed(mark)
      completed_idx = @item_array.index {|x| x.item_name == mark}
      @item_array[completed_idx].description << ' [x]'
    end


# List.new('','')

class Item
  attr_accessor :item_name, :description

  def initialize(item_name, description)
    @item_name = item_name
    @description = description
  end
end
end

l = List.new('l')
l.display_menu

# completed = List.new