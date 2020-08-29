class TopicSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :goals

  belongs_to :user

end
