class UpdateRecipes < ActiveRecord::Migration[6.0]
  def change
    add_reference :recipes, :category, foreign_key: true
    rename_column :recipes, :title, :name
  end
end
