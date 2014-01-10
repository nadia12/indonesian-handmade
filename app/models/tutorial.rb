class Tutorial < ActiveRecord::Base
  paginates_per 6
  belongs_to :category
  validates :title, :content, :picture, presence: true
  validates :title, uniqueness: true
  mount_uploader :picture, PictureUploader
  has_many :comments, as: :commentable, dependent: :destroy
  belongs_to :user
  acts_as_voteable
end
