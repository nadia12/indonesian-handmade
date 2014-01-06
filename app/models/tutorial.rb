class Tutorial < ActiveRecord::Base
  has_many :categories
  has_many :pictures, as: :imageable
  accepts_nested_attributes_for :imageable, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  
  has_many :comments, as: :commentable

end
