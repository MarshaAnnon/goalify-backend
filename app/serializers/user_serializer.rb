class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :topics

  has_many :goals, through: :topics

end
