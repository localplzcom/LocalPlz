class UpdateUserType < ActiveRecord::Migration
  def change
    change_column :users, :type, :boolean, :null => false
  end
end
