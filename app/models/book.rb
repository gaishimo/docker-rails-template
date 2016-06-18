class Book
  include Dynamoid::Document

  field :title

  belongs_to :user
end
