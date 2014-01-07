class AddPictureToEtalases < ActiveRecord::Migration
  def change
    add_column :etalases, :picture, :string
  end
end
