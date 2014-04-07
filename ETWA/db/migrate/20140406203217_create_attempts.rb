class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.datetime :registration_date
      t.integer :result
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
