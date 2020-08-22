class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  validates :email, uniqueness: true, length: { maximum: 256 }
  validates :age, presence: true, length: { maximum: 150 }
end
