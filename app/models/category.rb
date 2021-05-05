class Category < ApplicationRecord
  has_many :dreams, dependent: :destroy
end
