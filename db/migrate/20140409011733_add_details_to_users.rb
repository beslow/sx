class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :company, :string
  end
end
