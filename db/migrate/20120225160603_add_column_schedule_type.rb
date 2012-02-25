class AddColumnScheduleType < ActiveRecord::Migration
  def change
    add_column :specials, :schedule_type, :boolean, :default => 0
  end
end
