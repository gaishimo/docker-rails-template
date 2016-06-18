class User
  include Dynamoid::Document

  field :name
  field :email
  field :rank, :integer
  field :number, :number
  field :joined_at, :datetime
  field :hash, :serialized

  has_many :books, :class_name => 'Book'

  # local_secondary_index :range_key => :name
  # global_secondary_index :hash_key => :name, :range_key => :posted_at
  # global_secondary_index :hash_key => :length

end
