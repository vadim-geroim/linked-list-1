# Linked List #1
Solution and Tests to the Columbia University Linked List #1 problem.

## Project structure
- `lib/linked_list.rb`  - contains solution
- `spec/linked_list_spec.rb` - includes tests for pop, push and reverse_list methods

## Solution
- The `Stack` class contains implemented methods such as `pop`, `reverse_list`
- The `pop` method takes the last added element in the stack and returns stack without it
- The `reverse_list` method takes stack as a parameter, creates a new stack and iterates
through the stack accepted as a parameter. Each element will be added in a new stack and returned
as a result
- The `stack_to_array` created as an additional method for testing purpose. When test validates two stacks
they have different objects inside although the values are the same. For validation purpose of two stacks, I 
convert stack to array and array to string. That way rspec is able to compare two strings and tests are more readable for other people to review.

## Test execution
- Run `bundle install`
- Open terminal window
- From the project directory run `rspec`


