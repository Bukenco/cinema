class MovieSession < ApplicationRecord
  validates :movie_id,        presence: true
  validates :session_slot_id, presence: true
  validates :venue_id,        presence: true
  validates :price,           presence: true
  validates :session_date,    presence: true
end
