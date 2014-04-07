class CreateQuestionPools < ActiveRecord::Migration
  def change
    create_table :question_pools do |t|
      t.string :difficulty
      t.string :content
      t.string :status

      t.timestamps
    end
  end
end
