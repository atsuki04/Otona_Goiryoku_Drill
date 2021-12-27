class CreateQuestionQues < ActiveRecord::Migration[5.2]
  def change
    create_table :question_ques do |t|
      t.string :question_ids #"1,6,8,3"

      t.timestamps
    end
  end
end
