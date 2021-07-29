class Movie < ApplicationRecord
  validates :name,    presence: true
  validates :imdb_id, presence: true
end
