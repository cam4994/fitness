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

    def self.beginner
        self.all.select do |plan|
            plan.difficulty == "Beginner"
        end
    end

    def self.moderate
        self.all.select do |plan|
            plan.difficulty == "Moderate"
        end
    end

    def self.advanced
        self.all.select do |plan|
            plan.difficulty == "Advanced"
        end
    end
end
