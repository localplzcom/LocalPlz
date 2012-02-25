class ChangeScheduleType < ActiveRecord::Migration
  def change
    change_column :specials, :schedule_type, :boolean, {:null => false, :default => 0}
  end
end
