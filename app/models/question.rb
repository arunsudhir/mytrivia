class Question < ApplicationRecord
  validates :category, presence: true
  validates :question, presence: true
  validates :answer1, presence: true
  validates :answer2, presence: true
  validates :answer3, presence: true
  validates :rightanswer, presence: true
  validates :createdby, presence: true
end
