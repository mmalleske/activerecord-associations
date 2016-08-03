class Movie < ActiveRecord::Base
  has_many :theaters, through: :theater_movies
  has_many :theater_movies
  validates :title, :rating, presence: true
  #scope :elite, where(rating > 96)
end
