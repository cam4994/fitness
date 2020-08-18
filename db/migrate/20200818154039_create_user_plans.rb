class CreateUserPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :user_plans do |t|
      t.belongs_to :user
      t.belongs_to :plan

      t.timestamps
    end
  end
end
