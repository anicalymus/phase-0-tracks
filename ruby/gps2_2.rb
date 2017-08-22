# Method to create a list
def create_list(string_of_items)
	array_of_items = string_of_items.split(" ")
	grocery = {} 
	array_of_items.each do |grocery_item|
		p grocery[grocery_item] = 1
	end
	p grocery
end

test = "carrots apples cereal pizza"
example_list = create_list(test)

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: separate each item into their individual elements of an array using the .split method.
 	# set default quantity (this will be the value)
  # print the list to the console [can you use one of your other methods here?]
# output: the output will be a hash and the keys will be the type of items at a grocery store. The values will be the quanities of those items.

# Method to add an item to a list
def add_item(list, item_name, quantity = 1)
	list[item_name] = quantity
	list
end
p add_item(example_list, "bananas", 7)
p add_item(example_list, "mangoes")
# input: list, item name, and optional quantity
# steps: add item name as a key and quanity as a value to the hash that is passed in as the input list.
# output: an updated hash

# Method to remove an item from the list
def remove_item(list, item_name)
	list[item_name] = item
	
# input: list, item name
# steps: name the list and the item that you would like delete.
# output: an updated hash without the deleted item.


# Method to update the quantity of an item
# input: List, item name and quanity
# steps: If you have the same list, item name and different quanity then it will updated the quanity
# output: An updated hash with a different quanity

# Method to print a list and make it look pretty
# input: The list, item name and quanity
# steps: Iterate through each item and print a sentence for the item
# output: A detailed and cleaned up version of the items withing the sentence