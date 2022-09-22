Todo List Class Design Recipe

1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.


As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.


2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

class TodoList
  def initializer
  end

  def add(task) #task is a string representing an instruction
    # Return nothing
  end

  def list
    # Returns a list of the tasks added as strings
  end

  def complete(task) # task is a string representing a task to mark as complete
    # Returns nothing
    # Fails if the task doesn't exist
  end
end


3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# 1
todo_list = TodoList.new
todo_list.list # => []

# 2
todo_list = TodoList.new
todo_list.add("Wash the car")
todo_list.list # => ["Wash the car"]

# 3
todo_list = TodoList.new
todo_list.add("Wash the car")
todo_list.add("Vacuum the house")
todo_list.list # => ["Wash the car", "Vacuum the house"]

# 4
todo_list = TodoList.new
todo_list.add("Wash the car")
todo_list.add("Vacuum the house")
todo_list.complete("Wash the car")
todo_list.list # => ["Vacuum the house"]

# 5
todo_list = TodoList.new
todo_list.add("Wash the car")
todo_list.complete("Have breakfast")
todo_list.list # fails "No such task exists."


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.