class Etalase < ActiveRecord::Base
  
  validates :title, :price, :description, :picture , presence: true
  validates :title , uniqueness: true
  validates :price, numericality: { only_integer: true }
  mount_uploader :picture, PictureUploader
  has_many :comments, as: :commentable
  belongs_to :user
  belongs_to :category
  # paginates_per 12
  # has_many :pictures, as: :imageable
  # accepts_nested_attributes_for :pictures, allow_destroy: true
  
end
