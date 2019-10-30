module Types
  class PetType < BaseObject
    description 'Pet Type'

    field :id, ID, null: false
    field :name, String, null: true
    field :user, UserType, null: true

    def user
      RecordLoader.for(Pet, :user).load(object)
    end
  end
end
