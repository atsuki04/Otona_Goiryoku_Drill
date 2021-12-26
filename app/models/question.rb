class Question < ApplicationRecord
  belongs_to :genre
  has_many :favorites, dependent: :destroy
  
  def self.search(keyword)
    where(["question like? OR choice_answer Like? OR explanation Like?", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%"])
  end
  
end
