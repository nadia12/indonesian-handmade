class Category < ActiveRecord::Base
  has_many :etalases
  has_many :tutorials
end
