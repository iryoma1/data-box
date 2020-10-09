class Scene < ApplicationRecord
  has_one :user
  has_one_attached :image

  with_options presence:true do
    validates :name
    validates :user_name
    validates :image
  end
end
