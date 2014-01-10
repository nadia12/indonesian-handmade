class Etalase < ActiveRecord::Base
  
  validates :title, :price, :description, :picture , presence: true
  validates :title , uniqueness: true
  validates :price, numericality: { only_integer: true }
  mount_uploader :picture, PictureUploader
  has_many :comments, as: :commentable, dependent: :destroy
  belongs_to :user
  belongs_to :category
  acts_as_voteable 
end
