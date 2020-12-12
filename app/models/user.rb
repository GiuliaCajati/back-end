class User < ApplicationRecord
    has_many :user_gifts
    has_many :gifts, through: :user_gifts
    has_many :relationships
    has_many :characters, through: :relationships
    has_secure_password
 
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :name, length: {maximum: 15} 

    # validates :picture_url, presence: true

    
end
