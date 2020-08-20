class User < ApplicationRecord
    has_secure_password
    has_many :user_plans 
    has_many :user_recipes
    has_many :plans, through: :user_plans
    has_many :recipes, through: :user_recipes
    validates :username, uniqueness: true 
    validates :password, length: {minimum: 6}

    def exercises
        exercises = []
        self.plans.each do |plan|
            exercises += plan.exercises
        end
        exercises
    end

    def chest_exercises
        self.exercises.select do |exercise|
            exercise.category == "Chest"
        end
    end

    def arm_exercises
        self.exercises.select do |exercise|
            exercise.category == "Arms"
        end
    end

    def shoulder_exercises
        self.exercises.select do |exercise|
            exercise.category == "Shoulders"
        end
    end

    def back_exercises
        self.exercises.select do |exercise|
            exercise.category == "Back"
        end
    end
    
    def leg_exercises
        self.exercises.select do |exercise|
            exercise.category == "Legs"
        end
    end

    def ab_exercises
        self.exercises.select do |exercise|
            exercise.category == "Abs"
        end
    end

    def cardio_exercises
        self.exercises.select do |exercise|
            exercise.category == "Cardio"
        end
    end
end
