class AuthorSerializer < ActiveModel::Serializer
  attributes :name

  has_one :profile, serializer: ProfileAuthorSerializer
  has_many :posts, serializer: PostAuthorSerializer
end
