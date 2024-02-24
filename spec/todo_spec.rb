require 'todo'
RSpec.describe TodoList do
    describe "#add" do
      it "adds a todo to the list" do
        todo_list = TodoList.new
        todo_list.add("Complete SA9")
        expect(todo_list.todos).to eq(["Complete SA9"])
      end
    end
  
    describe "#remove" do
      it "removes a todo from the list" do
        todo_list = TodoList.new
        todo_list.add("Submit it tonight")
        todo_list.remove("Submit it tonight")
        expect(todo_list.todos).to eq([])
      end
    end
  
    describe "#todos" do
      it "returns all todos" do
        todo_list = TodoList.new
        todo_list.add("Task 1")
        todo_list.add("Task 2")
        expect(todo_list.todos).to eq(["Task 1", "Task 2"])
      end
    end
  end
  