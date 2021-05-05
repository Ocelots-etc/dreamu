class DreamSerializer
  include JSONAPI::Serializer
  attributes :dream_datetime, :journal, :image_url, :category_id, :category
  # belongs_to :category
end
