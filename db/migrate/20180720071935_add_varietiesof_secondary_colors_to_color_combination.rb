class AddVarietiesofSecondaryColorsToColorCombination < ActiveRecord::Migration[5.1]
  def change
  	add_column :color_combinations, :darkened_secondary, :string
  end
end
