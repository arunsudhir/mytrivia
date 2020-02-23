class Quiz < ApplicationRecord
  validates :title, presence: true
  validates num_questions, presence: true
end
