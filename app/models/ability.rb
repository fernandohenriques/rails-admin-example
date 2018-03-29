class Ability
  include CanCan::Ability

  def initialize(user)
    if user.perfil.id == 1
      can :manage, :all
    end
  end

end
