class RemoveScheduleType < ActiveRecord::Migration
  def change
    remove_column :specials, :schedule_type
  end
end
