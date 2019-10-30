module Types
  class UserType < BaseObject
    description 'User Type'

    field :id, ID, null: false
    field :email, String, null: true
    field :pets, [PetType], null: true
  end
end
