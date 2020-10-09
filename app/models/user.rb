class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :scenes

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,}+\z/.freeze

  with_options presence:true do
    validates :name
    validates :email, format: { with: EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :password, format: { with: PASSWORD_REGEX }
  end

  # def self.search(search)
  #   if search != ""
  #     User.where('text LIKE(?)', "%#{search}%")
  #   else
  #     User.name
  #   end
  # end
  def self.search(search)   
    if search  
      User.where(['name LIKE ?', "%#{search}%"])   
    else  
      User.all  
    end  
end  
end
