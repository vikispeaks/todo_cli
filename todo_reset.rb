require "./connect_db.rb"
require "./todo.rb"

connect_db!
#First, let's wipe the existing list of to-dos.
Todo.destroy_all

# Overdue
Todo.create!(todo_text: 'File taxes', due_date: 3.days.ago, completed: false)
Todo.create!(todo_text: 'Buy milk', due_date: 1.day.ago, completed: false)

# Due today
Todo.create!(todo_text: 'Service vehicle', due_date: Date.today, completed: false)
Todo.create!(todo_text: 'Submit assignment', due_date: Date.today, completed: true)

# Due Later
Todo.create!(todo_text: 'Use the Rails convention for the URL', due_date: 1.day.from_now, completed: true)
Todo.create!(todo_text: 'Stock up on groceries', due_date: 3.days.from_now, completed: false)