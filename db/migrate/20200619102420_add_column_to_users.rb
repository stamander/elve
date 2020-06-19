class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
  
 
    add_column :users, :kana, :string,null:false
 
    add_column :users, :adressNumber,:integer,null:false
 
    add_column :users, :adress, :string,null:false
 
  end
end
