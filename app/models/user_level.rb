class UserLevel < ApplicationRecord
  validates :level, presence: true
end
