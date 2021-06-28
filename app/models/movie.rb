class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, numericality: { greater_than: 1800 }
  # validates :plot, length: { greater_than: 20 }
  validates :director, presence: true
end
