class CreateEtalases < ActiveRecord::Migration
  def change
    create_table :etalases do |t|
      t.string :title
      t.string :photo
      t.string :price
      t.text :description
     

      t.timestamps
    end
  end
end
