module Types
  class QueryType < Types::BaseObject
    field :user, resolver: Queries::UserQuery
    field :pet, resolver: Queries::PetQuery
    field :users, resolver: Queries::UsersQuery
  end
end
