module Types
  class QueryType < Types::BaseObject
    description 'The query root of this schema'

    # First describe the field signature:
    field :post, PostType, null: true do
      description 'Find a post by ID'
      argument :id, ID, required: true
    end

    # Then provide an implementation:
    def post(id:)
      Post.find(id)
    end

    # TODO: remove me
    field :test_field, String, null: false,
      description: 'An example field added by the generator'
    def test_field
      'Hello World!'
    end
  end
end
