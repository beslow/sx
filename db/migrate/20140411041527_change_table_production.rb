class ChangeTableProduction < ActiveRecord::Migration
  def change
    rename_column :productions, :type, :pro_type
  end
end
