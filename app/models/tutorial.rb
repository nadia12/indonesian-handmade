class Tutorial < ActiveRecord::Base
  paginates_per 6
  belongs_to :category
  validates :title, :content, :picture, presence: true
  validates :title, uniqueness: true
  mount_uploader :picture, PictureUploader
  has_many :comments, as: :commentable
  belongs_to :user
  # has_many :pictures, as: :imageable
  # accepts_nested_attributes_for :imageable, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
