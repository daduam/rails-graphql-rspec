module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :authors, [Types::AuthorType], null: false do
      description "Find all authors"
    end

    field :author, Types::AuthorType, null: false do
      description "Find an author by ID"

      argument :id, ID, required: true
    end

    field :books, [Types::BookType], null: false do
      description "Find all books"
    end

    field :book, Types::BookType, null: false do
      description "Find a books by ID"

      argument :id, ID, required: true
    end

    def authors
      Author.all
    end

    def author(id:)
      Author.find(id)
    end

    def books
      Book.all
    end

    def book(id:)
      Book.find(id)
    end
  end
end
