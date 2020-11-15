class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genre
  belongs_to :movie_genre
  validates :title, length: { minimum: 2}
  validates :director, length: { minimum: 2}
end
