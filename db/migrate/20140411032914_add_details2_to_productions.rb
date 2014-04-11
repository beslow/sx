class AddDetails2ToProductions < ActiveRecord::Migration
  def change
    add_column :productions, :no, :string
    add_column :productions, :type, :string
    add_column :productions, :placefrom, :string
    add_column :productions, :available, :string
  end
end
