class User < ApplicationRecord

    has_many :topics
    has_many :goals, through: :topics, dependent: :delete_all
    
    has_secure_password

    validates_presence_of :email
    validates_uniqueness_of :email
    
end
