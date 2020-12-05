class Scene < ApplicationRecord
  has_many :user_scene
  belongs_to :user
  # accepts_nested_attributes_for :user_scene
  has_many_attached :image

  with_options presence:true do
    validates :name
    validates :user_name
    validates :image
    validates :user
    validates :user_scene
  end
end
