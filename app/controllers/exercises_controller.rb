class ExercisesController < ApplicationController
    def index 
        @exercises = Exercise.all 
    end

    def show 
        @exercise = Exercise.find(params[:id])
    end

    def category
        @exercises= Exercise.muscle_group(params[:id])
    end
end
