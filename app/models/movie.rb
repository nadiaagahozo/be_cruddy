class Movie < ApplicationRecord
  has_many :actors
  validates :title, length: { minimum: 2}
  validates :director, length: { minimum: 2}
end
