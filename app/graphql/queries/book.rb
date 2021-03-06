module Queries
  class Book < BaseQuery
    description "Find a books by ID"

    argument :id, ID, required: true

    type Types::BookType, null: false

    def resolve(id:)
      ::Book.find(id)
    end
  end
end
