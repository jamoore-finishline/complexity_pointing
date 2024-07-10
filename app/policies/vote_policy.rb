class VotePolicy < ApplicationPolicy
    def index?
      user.admin?
    end
  
    def show?
      user.admin?
    end
  
    def create?
      user.developer? || user.qa?
    end
  
    def update?
      user.developer? || user.qa?
    end
  
    def destroy?
      user.admin?
    end
  end
  