class AddDishToMeals < ActiveRecord::Migration[6.1]
  def change
    add_column :meals, :dish, :string
  end
end
