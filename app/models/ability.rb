class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    case user.role
    when "admin"
      can :manage, :all
    when "employee"
      can :create, LeaveEvent
      can :read, LeaveEvent
    end
  end
end
