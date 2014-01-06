class Etalase < ActiveRecord::Base
  has_many :categories
  has_many :pictures, as: :imageable
  has_many :comments, as: :commentable

end
