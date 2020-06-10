class CreateExhibitions < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibitions do |t|
      t.string :name,null: false
      t.integer :price,null: false
      t.string :explain,null:false


      t.timestamps
    end
  end
end
