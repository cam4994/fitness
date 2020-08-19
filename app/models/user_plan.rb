class UserPlan < ApplicationRecord
    belongs_to :user 
    belongs_to :plan
    validate :no_duplicate_plans

    def no_duplicate_plans
        if UserPlan.find_by(user_id: self.user_id, plan_id: self.plan_id)
            @errors.add(:base, "You've already saved this plan!") 
        end
    end
end
