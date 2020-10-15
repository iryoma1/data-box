class Scene < ApplicationRecord
  belongs_to :user
  has_many_attached :image

  with_options presence:true do
    validates :name
    validates :user_name
    validates :image
  end
end
