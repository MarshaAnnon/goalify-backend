class Topic < ApplicationRecord
  has_many :goals, dependent: :delete_all
  belongs_to :user

  validates :name, presence: true
end
