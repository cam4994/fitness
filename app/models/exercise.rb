class Exercise < ApplicationRecord
    has_many :plan_exercises
    has_many :plans, through: :plan_exercises


end
