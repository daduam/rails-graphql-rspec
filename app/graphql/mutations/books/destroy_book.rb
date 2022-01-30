module Mutations
  module Books
    class DestroyBook < BaseMutation
      argument :id, ID, required: true

      type Types::BookType

      def resolve(id:)
        Book.find(id).destroy
      end
    end
  end
end
