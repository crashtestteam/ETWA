class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.datetime :start
      t.datetime :end
      t.integer :slots
      t.string :location

      t.timestamps
    end
  end
end
