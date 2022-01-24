class Batch::DataReset
  def self.data_reset
    # 出題済みの問題を全て削除
    QuestionQue.delete_all
    p "出題済みの問題を全て削除しました"
  end
end