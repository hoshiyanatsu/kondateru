class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :image
      t.string :feeling
      t.string :ingredient
      t.string :time
      t.string :kinds

      t.timestamps
    end
  end
end
