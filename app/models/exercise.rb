class Exercise < ApplicationRecord
    has_many :plan_exercises
    has_many :plans, through: :plan_exercises

    def self.muscle_group(muscle_group)
        self.all.select do |exercise|
            exercise.category == muscle_group.capitalize
        end
    end

end
