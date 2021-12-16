class Question < ApplicationRecord
  belongs_to :genre
  has_many :favorites, dependent: :destroy
end
