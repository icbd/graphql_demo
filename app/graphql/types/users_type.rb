module Types
  class UsersType < BaseObject
    description 'Users Type'

    field :total, Int, null: false
    field :items, [UserType], null: false
  end
end
