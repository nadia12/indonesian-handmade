class Category < ActiveRecord::Base
  belongs_to :etalase
  belongs_to :tutorial
end
