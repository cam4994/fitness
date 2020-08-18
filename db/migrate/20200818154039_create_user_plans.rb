class CreateUserPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :user_plans do |t|
      t.integer :user_id
      t.integer :plan_id

      t.timestamps
    end
  end
end
