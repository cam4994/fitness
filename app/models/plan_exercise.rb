class PlanExercise < ApplicationRecord
    belongs_to :plan 
    belongs_to :exercise

    def exercise_name
        self.exercise.name
    end
end
