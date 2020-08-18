class Plan < ApplicationRecord
    has_many :user_plans
    has_many :users, through: :user_plans
    has_many :plan_exercises 
    has_many :exercises, through: :plan_exercises

    def exercise_names
        self.exercises.map do |exercise| 
            exercise.name 
        end
    end
end
