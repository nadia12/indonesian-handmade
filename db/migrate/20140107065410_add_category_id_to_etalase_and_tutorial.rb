class AddCategoryIdToEtalaseAndTutorial < ActiveRecord::Migration
  def change
    add_column :tutorials, :category_id, :integer
    add_column :etalases, :category_id, :integer
  end
end
