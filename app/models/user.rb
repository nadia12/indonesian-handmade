class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  acts_as_voter
  acts_as_voteable

  mount_uploader :avatar, AvatarUploader

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  validates :name, :address, :phone, presence: true
  has_many :tutorials
  has_many :etalases
  has_many :comments

  scope :admin,     -> { where(role: 'admin') }
  scope :member,  -> { where(role: 'member') }
  scope :visitor,   -> { where(role: 'visitor') }
  
  ROLES = %w[admin member]
end
