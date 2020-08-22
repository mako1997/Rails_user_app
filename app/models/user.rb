class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  validates :email, uniqueness: true, presence: true, length: { maximum: 256 }
  validates :age, presence: true, inclusion: { in: 0..150 }
end
