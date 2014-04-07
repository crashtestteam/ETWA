class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :difficulty
      t.string :content
      t.string :status

      t.timestamps
    end
  end
end
