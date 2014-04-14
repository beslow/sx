class AddDetails3ToProductions < ActiveRecord::Migration
  def change
    add_column :productions, :img_url, :string
  end
end
