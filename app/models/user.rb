class User < ApplicationRecord
 validates :name, presence: true
 validates :level, presence: true
end
