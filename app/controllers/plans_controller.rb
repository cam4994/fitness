class PlansController < ApplicationController

    def index 
        @plans = Plan.all
    end

    def show 
        @plan = Plan.find(params[:id])
        @user_plan = UserPlan.new
    end

end
