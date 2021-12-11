class AddMealIdToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :meal_id, :integer
  end
end
