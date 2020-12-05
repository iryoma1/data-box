class UserScene < ApplicationRecord
  belongs_to :user
  belongs_to :scene

  with_options presence:true do
    validates :user
    validates :scene
  end
end
 