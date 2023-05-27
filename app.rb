class TodoList
  attr_reader :todos

  def initialize
    @todos = []
  end

  def add(todo)
    todos << todo
  end

  def delete(index)
    todos.delete_at(index)
  end

  def display
    puts "To-Do List:"
    todos.each_with_index do |todo, index|
      puts "#{index + 1}. #{todo}"
    end
  end
end

todo_list = TodoList.new

loop do
  puts "What would you like to do?"
  puts "1. Add a task"
  puts "2. Delete a task"
  puts "3. Display tasks"
  puts "4. Exit"

  choice = gets.chomp.to_i

  case choice
  when 1
    puts "Enter a task:"
    task = gets.chomp
    todo_list.add(task)
    puts "Task added!"
  when 2
    puts "Enter the task number to delete:"
    index = gets.chomp.to_i - 1
    todo_list.delete(index)
    puts "Task deleted!"
  when 3
    todo_list.display
  when 4
    break
  else
    puts "Invalid choice"
  end

  puts "\n"
end
