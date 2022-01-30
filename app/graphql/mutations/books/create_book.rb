module Mutations
  module Books
    class CreateBook < BaseMutation
      argument :author_id, ID, required: true
      argument :genre, Types::Enums::Genre, required: true
      argument :publication_date, Integer, required: true
      argument :title, String, required: true

      type Types::BookType

      def resolve(author_id:, **attrs)
        Author.find(author_id).books.create!(attrs)
      end
    end
  end
end
