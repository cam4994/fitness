class CreatePlanExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :plan_exercises do |t|
      t.integer :plan_id
      t.integer :exercise_id
      t.string :sets

      t.timestamps
    end
  end
end
