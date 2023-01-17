class PostAuthorSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  def short_content
    short_content = "#{object.content.first(40)}..."
  end

  def tags
    object.tags
  end
end
