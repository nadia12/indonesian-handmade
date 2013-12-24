class RemovePhotoFromTutorial < ActiveRecord::Migration
  def down
    remove_column :tutorials, :photo
    remove_column :etalases, :photo
  end
end
