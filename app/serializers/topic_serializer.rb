class TopicSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :goals

  
  belongs_to :user
  
  # attribute :goals do |topic|
  #   topic.goals.map do |top|
  #     {
  #       goal_name: top.goal_name,
  #       goal_description: top.goal_description,
  #       goal_timeline: top.goal_timeline
  #     }
  #   end
  # end


end
