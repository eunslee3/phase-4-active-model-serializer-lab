class PostSerializer < ActiveModel::Serializer
  attributes :title, :content

  belongs_to :author, serializer: AuthorPostSerializer
  has_many :tags, serializer: TagPostSerializer
end
