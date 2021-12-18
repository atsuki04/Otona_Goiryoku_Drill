class Favorite < ApplicationRecord
  belongs_to :customer
  belongs_to :question

  validates_uniqueness_of :question_id, scope: :customer_id
end