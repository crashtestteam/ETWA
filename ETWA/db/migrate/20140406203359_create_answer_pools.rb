class CreateAnswerPools < ActiveRecord::Migration
  def change
    create_table :answer_pools do |t|
      t.string :content
      t.integer :points
      t.string :status
      t.boolean :correct

      t.timestamps
    end
  end
end
