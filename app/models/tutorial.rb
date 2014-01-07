class Tutorial < ActiveRecord::Base
  has_many :categories
  validates :title, :content, :picture, presence: true
  validates :title, uniqueness: true
  # has_many :pictures, as: :imageable
  # accepts_nested_attributes_for :imageable, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  mount_uploader :picture, PictureUploader
  has_many :comments, as: :commentable

end
