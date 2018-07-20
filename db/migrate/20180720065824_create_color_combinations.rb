class CreateColorCombinations < ActiveRecord::Migration[5.1]
  def change
    create_table :color_combinations do |t|
      t.integer :external_id
      t.string :primary_color
      t.string :secondary_color

      t.timestamps
    end
  end
end
