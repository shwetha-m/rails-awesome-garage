class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews
  has_many :favourites
  validates :brand, presence: true
  validates :model, presence: true
  validates :fuel, presence: true
  validates :year, presence: true, numericality: {
    only_integer: true,
    less_than_or_equal_to: Date.current.year,
    message: 'can not be in the future'
  }
end
