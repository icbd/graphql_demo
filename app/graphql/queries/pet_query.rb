module Queries
  class PetQuery < BaseQuery
    type Types::PetType, null: true

    argument :id, Int, required: true

    def resolve(id:)
      Pet.find(id)
    end
  end
end
