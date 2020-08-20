class PlansController < ApplicationController

    def index 
        @plans = Plan.all
    end

    def show 
        @plan = Plan.find(params[:id])
        @user_plan = UserPlan.new
    end

    def beginner
        @plans = Plan.beginner
        render 'difficulty'
    end

    def moderate
        @plans = Plan.moderate
        render 'difficulty'
    end
    
    def advanced
        @plans = Plan.advanced
        render 'difficulty'
    end

end
