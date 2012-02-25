class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |t|
      t.string :title, :null => false
      t.string :description, :null => false
      t.string :terms 
      t.integer :day_of_week
      t.date :first_day
      t.date :last_day
      t.string :schedule_type, :null => false
      t.boolean :cancelled, :null => false, :default => 0
      t.timestamps
    end
  end
end
