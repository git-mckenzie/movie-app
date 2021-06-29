class Movie < ApplicationRecord
  has_many :actors #returns array of many actors
  validates :title, presence: true
  validates :year, numericality: { greater_than: 1800 }
  # validates :plot, length: { greater_than: 20 }
  validates :director, presence: true
end
