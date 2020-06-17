class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.references :shops,null:false

      t.timestamps
    end
  end
end
