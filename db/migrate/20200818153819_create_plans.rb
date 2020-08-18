class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :name
      t.string :difficulty
      t.string :commitment

      t.timestamps
    end
  end
end
