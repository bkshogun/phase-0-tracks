class TodoList 
  attr_accessor :list 
  
  def initialize(list)
  	@list = list
  end 
  
  def get_items
    p list 
  end 

  def add_item(item)
  	list << item 
  end

  def delete_item(item)
  	list.delete(item)
  end 

  def get_item(index)
  	index = list.at(index)
  end 
end  

list = TodoList.new(["do the dishes", "mow the lawn"])
list.get_items
p list.add_item("mop")
list.delete_item("mow the lawn")
p list  
