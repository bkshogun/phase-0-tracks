def grocery_list(item_string)
  item_string_split = item_string.split
  grocery_list_hash = {}
  item_string_split.each { |i| grocery_list_hash[i] = 2 }
  grocery_list_hash
end 

def add_item(existing_hash, new_item, quantity = 2)
  existing_hash[new_item] = quantity
  p existing_hash
end 

def remove_item(existing_hash, item)
  existing_hash.delete(item)
end 

def update_quantity(existing_hash, item, quantity)
  existing_hash[item] = quantity
end 

existing_hash = grocery_list("carrots apples cereal pizza")

#add_item(existing_hash, "milk")
#remove_item(existing_hash, "apples")
#update_quantity(existing_hash, "pizza", 50)
p existing_hash
