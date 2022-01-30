module Mutations
  module Books
    class UpdateBook < BaseMutation
      argument :author_id, ID, required: false
      argument :genre, Types::Enums::Genre, required: false
      argument :id, ID, required: true
      argument :publication_date, Integer, required: false
      argument :title, String, required: false

      type Types::BookType

      def resolve(id:, **attrs)
        Book.find(id).tap do |book|
          book.update!(attrs)
        end
      end
    end
  end
end
