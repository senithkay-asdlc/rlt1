Feature: Todo management

  @story-1
  Rule: A user must be signed in to see or manage todos

    @negative
    Scenario: A signed-out visitor cannot reach the todo list
      Given Alice is not signed in
      When Alice tries to open the todo app
      Then she is not shown any todos

  @story-2
  Rule: A signed-in user can create a todo by entering its text

    Scenario: Adding a new todo
      Given Alice is signed in with no todos yet
      When Alice creates a todo with the text "Buy groceries"
      Then her todo list has exactly one todo, "Buy groceries", not done

    @negative
    Scenario: An empty todo is not created
      Given Alice is signed in with no todos yet
      When Alice tries to create a todo with empty text
      Then her todo list still has no todos

  @story-3
  Rule: A user sees only their own todos, with each one's done status

    Scenario: A user's list shows pending and done todos
      Given Alice has created "Buy groceries" and "Write report", and has marked "Write report" done
      When Alice opens her todo list
      Then she sees "Buy groceries" as not done and "Write report" as done

    @negative
    Scenario: A user cannot see another user's todos
      Given Bob has created a todo named uniquely for this run
      When Alice opens her todo list
      Then Bob's todo does not appear in it

  @story-4
  Rule: A user can mark one of their own todos as done

    Scenario: Marking a todo done
      Given Alice has created a todo "Call plumber" that is not done
      When Alice marks "Call plumber" as done
      Then "Call plumber" shows as done in her todo list

    @negative
    Scenario: A user cannot mark another user's todo as done
      Given Bob has created a todo named uniquely for this run, not done
      When Alice tries to mark Bob's todo as done
      Then Bob's todo still shows as not done
