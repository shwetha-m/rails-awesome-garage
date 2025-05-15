class Review < ApplicationRecord
  belongs_to :car
  validates :comment, length: { minimum: 6 }, presence: true
  validates :rating, inclusion: { in: 0..5 }, presence: true
end
