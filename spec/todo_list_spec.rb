require_relative "../lib/todo_list.rb"

RSpec.describe TodoList do
  context "given no tasks" do
    it "has an empty list" do
      todo_list = TodoList.new
      expect(todo_list.list).to eq []
    end
  end

  context "given a task" do
    it "has the task in the list" do
      todo_list = TodoList.new
      todo_list.add("Wash the car")
      expect(todo_list.list).to eq ["Wash the car"]
    end
  end

  context "given two tasks" do
    it "has both tasks in the list" do
      todo_list = TodoList.new
      todo_list.add("Wash the car")
      todo_list.add("Vacuum the house")
      expect(todo_list.list).to eq ["Wash the car", "Vacuum the house"]
    end
  end

  context "when a task is completed" do
    it "removes the task from the list" do
      todo_list = TodoList.new
      todo_list.add("Wash the car")
      todo_list.add("Vacuum the house")
      todo_list.complete("Wash the car")
      expect(todo_list.list).to eq ["Vacuum the house"]
    end
  end

  context "when we try to complete a non-existent task" do
    it "fails" do
      todo_list = TodoList.new
      todo_list.add("Wash the car")
      expect { todo_list.complete("Have breakfast") }.to raise_error "No such task exists."
    end
  end
end