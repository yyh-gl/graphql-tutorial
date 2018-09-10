module Types

  # app/graphql/post_type.graphql
  class PostType < Types::BaseObject
    description 'A blog post'
    field :id, ID, null: false
    field :title, String, null: false
    # fields should be queried in camel-case (this will be `truncatedPreview`)
    field :rating, Int, null: false
    # Fields can return lists of other objects:
    # field :comments, [Types::CommentType], null: true,
    #       # And fields can have their own descriptions:
    #       description: "This post's comments, or null if this post has comments disabled."
  end

  # app/graphql/comment_type.graphql
  # class CommentType < Types::BaseObject
  #   field :id, ID, null: false
  #   field :post, Types::PostType, null: false
  # end
end
