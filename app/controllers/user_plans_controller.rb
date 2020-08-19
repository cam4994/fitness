class UserPlansController < ApplicationController

    def create 
        @user_plan = UserPlan.new(user_plan_params)
        if @user_plan.save 
            redirect_to user_path(@user_plan.user)
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
