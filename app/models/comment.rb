class Comment
  include Dynamoid::Document
  table key: :user_id

  range :commented_at, :datetime
  field :body

end
