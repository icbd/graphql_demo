module Queries
  class UsersQuery < BaseQuery
    type Types::UsersType, null: true

    def resolve
      {
        total: User.count,
        items: User.all.order(id: :desc)
      }
    end
  end
end
