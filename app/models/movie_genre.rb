class MovieGenre < ApplicationRecord
  belongs_to :genres
  belongs_to :movies
end
