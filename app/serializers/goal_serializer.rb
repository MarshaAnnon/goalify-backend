class GoalSerializer
  include FastJsonapi::ObjectSerializer
  attributes :goal_name, :goal_description, :goal_timeline

  belongs_to :topic
end
