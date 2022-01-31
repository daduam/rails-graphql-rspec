module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :author, resolver: Queries::Author
    field :authors, resolver: Queries::Authors
    field :book, resolver: Queries::Book
    field :books, resolver: Queries::Books
  end
end
