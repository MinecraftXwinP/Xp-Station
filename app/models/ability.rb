class Ability
  include CanCan::Ability

  def initialize(player)
      if player.admin
        can :manage,:all
      else
        can :update,Player,id: player.id
      end
  end
end
