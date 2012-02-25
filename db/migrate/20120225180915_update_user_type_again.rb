class UpdateUserTypeAgain < ActiveRecord::Migration
  def change
    rename_column :users, :type, :account
  end
end
