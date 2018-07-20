class AddMoreColorsToColorCombinations < ActiveRecord::Migration[5.1]
  def change
    add_column :color_combinations, :darkened_primary, :string
    add_column :color_combinations, :lightened_primary, :string
  end
end
