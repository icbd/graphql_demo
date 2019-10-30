module Types
  class UserType < BaseObject
    description 'User Type'

    field :id, ID, null: false
    field :email, String, null: true
    field :pets, [PetType], null: true

    def pets
      RecordLoader.for(User, :pets).load(object)
    end
  end
end
