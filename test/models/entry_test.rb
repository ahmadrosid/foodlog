require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, proteins: 12, fats: 10, calories: 10)
    assert entry.save
  end

  test "should not save entry without meal_type" do 
    entry = Entry.new(carbohydrates: 35, proteins: 12, fats: 10, calories: 10)
    assert_not entry.save
  end
  
  test "should not save entry without carbohydrates" do 
    entry = Entry.new(meal_type: "Breakfast", proteins: 12, fats: 10, calories: 10)
    assert_not entry.save
  end

  test "should not save entry without proteins" do 
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, fats: 10, calories: 10)
    assert_not entry.save
  end

  test "should not save entry without fats" do 
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, proteins: 12, calories: 10)
    assert_not entry.save
  end

  test "should not save entry without calories" do 
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, proteins: 12, fats: 10)
    assert_not entry.save
  end

end
