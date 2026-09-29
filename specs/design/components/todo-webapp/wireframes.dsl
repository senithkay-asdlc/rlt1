screen TodoList "A signed-in user's own todos, pending and done"
  navbar "Todo" -> TodoList
  heading "My Todos"
  row
    input "What do you need to do?"
    right
    button "Add" primary // adds the todo and stays on this list
  table "Todo | Status | Action"
    row "Buy groceries | Pending | Mark done"
    row "Write report | Pending | Mark done"
    row "Call plumber | Done | —"

flow "Manage my todos"
  role "User"
  description "A signed-in user adds a todo and marks one done"
  TodoList
