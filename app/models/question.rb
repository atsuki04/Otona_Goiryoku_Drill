class Question < ApplicationRecord
  belongs_to :genre
  has_many :favorites, dependent: :destroy
  
  def self.search(keyword)
    where(["question like? OR explanation Like?", "%#{keyword}%", "%#{keyword}%"])
  end
  
end
