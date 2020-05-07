class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.text :title, unique: true
      t.text :description
      t.text :directions

      t.timestamps
    end
  end
end
