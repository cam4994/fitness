class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :calories
      t.float :carbs
      t.float :fat
      t.float :protein
      t.string :cook_time
      t.string :serves

      t.timestamps
    end
  end
end
