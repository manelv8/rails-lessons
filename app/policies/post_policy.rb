class PostPolicy < ApplicationPolicy
  class Algo < Scope
    def resolve
      if user && user.admin? # se o usuario ta logado
        scope.all
      else
        scope.published
      end
    end
  end

  def index?
    true
  end

  def create?
    user && user.admin?
  end

  def destroy?
    record.user == user
  end
end
