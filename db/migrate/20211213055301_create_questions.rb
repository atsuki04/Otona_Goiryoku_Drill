class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|

      t.string :question
      t.string :choice_1
      t.string :choice_2
      t.string :choice_answer
      t.string :explanation
      t.bigint :genre_id, foreign_key: true
      t.timestamps
    end
  end
end
