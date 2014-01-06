class AddUserIdToEtalase < ActiveRecord::Migration
  def change
    add_column :etalases, :user_id, :integer
  end
end
