class UserPlansController < ApplicationController

    def create 
        @user_plan = UserPlan.new(user_plan_params)
        if @user_plan.save 
            @success = "You have successfully added #{@user_plan.plan.name} to your plans!"
            @plans = Plan.all
            render '/plans/index'
        else
            @plan = @user_plan.plan
            # Check if user_plan didn't save due to having no user logged in 
            if @user_plan.user == nil
                @plan.errors.add(:base, "Must be logged in to add plans.")
            end
            render '/plans/show'
        end
    end


    private 
    def user_plan_params
        params.require(:user_plan).permit(:user_id, :plan_id)
    end
end
