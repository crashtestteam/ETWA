class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :title
      t.integer :duration

      t.timestamps
    end
  end
end
