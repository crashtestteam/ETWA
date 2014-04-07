class CreateAnswerInAttempts < ActiveRecord::Migration
  def change
    create_table :answer_in_attempts do |t|
      t.integer :answer_id
      t.integer :attempt_id
      t.boolean :chosen

      t.timestamps
    end
  end
end
