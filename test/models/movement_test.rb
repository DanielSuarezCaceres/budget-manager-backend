require 'test_helper'

class MovementTest < ActiveSupport::TestCase
  
  test "should not create movements without any information" do
    movement = Movement.new
    assert_not movement.save, "Saved the movement without any information"
  end

  test "should not create movements withot amount" do
    movement = Movement.new(concept: "income", day: Date.today)
    assert_not movement.save, "Saved movement without amount"
  end

  test "should not create movements without concept" do 
    movement = Movement.new(amount: 25.0, day: Date.today)
    assert_not movement.save, "Saved movement without concept"
  end

  test "should not create movements without date" do
    movement = Movement.new(amount: 25.0, concept: "income")
    assert_not movement.save, "Saved movement without date"
  end

  test "should create movement which has valid data" do
    movement = Movement.new(amount: 50.0, concept: "expense", day: Date.today)
    assert movement.save, "Saved movement with valid data"
  end

  test "object is instance of Movement class" do
    sample = Movement.new
    assert_instance_of(Movement, sample, "sample object is an instance of Movement class")
  end

  test "object A is the same as object B" do
    movement = Movement.new
    movement_copy = movement
    assert_equal(movement, movement_copy, "Both refers to the same object")
  end

  test "object A is not the same as object B" do
    movement = Movement.new
    other_movement = Movement.new
    assert_not_equal(movement, other_movement, "Objects are different")
  end

  test "should report error" do
    # some undefined variable is not defined
    # some_undefined_variable
    # assert true

    # this makes the test pass (asserts that an error is raised)
    assert_raises(NameError) do
      some_undefined_variable
    end
  end

end
