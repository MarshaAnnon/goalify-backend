class Goal < ApplicationRecord
  belongs_to :topic

  validates :goal_name, presence: true
end
