class TodoList

	def initialize(chores)
		@chores = chores
	end

	def get_items
		p @chores
	end

	def add_item(chore_to_add)
		@chores.push(chore_to_add)
	end

	def delete_item(chore_to_delete)
		@chores.delete(chore_to_delete)
		p @chores
	end

	def get_item(i)
		p @chores[i]
	end


end

# List = TodoList.new("do the dishes", "mow the lawn")

# p List