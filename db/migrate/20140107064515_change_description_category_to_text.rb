class ChangeDescriptionCategoryToText < ActiveRecord::Migration
  def change
    change_column :categories, :description, :text
  end
end
