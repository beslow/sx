class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.timestamps
    end
    add_column :users,:name,:text
    add_column :users,:password,:text
  end
end
