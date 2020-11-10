class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :topics, :goals

end
