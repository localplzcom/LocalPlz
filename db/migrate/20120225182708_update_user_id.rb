class UpdateUserId < ActiveRecord::Migration
  def change
    add_column :specials, :user_id, :integer
  end
end