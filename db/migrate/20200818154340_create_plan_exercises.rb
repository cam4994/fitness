class CreatePlanExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :plan_exercises do |t|
      t.belongs_to :plan
      t.belongs_to :exercise
      t.string :sets

      t.timestamps
    end
  end
end
