class User < ApplicationRecord
    has_secure_password
    has_many :user_plans 
    has_many :user_recipes
    has_many :plans, through: :user_plans
    has_many :recipes, through: :user_recipes
end
