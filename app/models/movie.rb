class Movie < ApplicationRecord
  validates :title, length: { minimum: 2}
  validates :director, length: { minimum: 2}
end
