class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new 
   
    if user.role == 'admin'
      can :manage, :all

    elsif user.role == 'member'
      can :manage, Etalase, user_id: user.id
      can :manage, Tutorial, user_id: user.id
      can :manage, User, id: user.id
      can :manage, Comment, id: user.id
      can :read, Category
      can :read, Etalase
      can :read, Tutorial
    else
      can :read, :all
    end

  end
end
