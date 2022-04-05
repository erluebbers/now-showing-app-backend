class Movie < ActiveRecord::Base
  has_many :showings
  has_many :theaters, through: :showings

  def self.rating_finder(rating_arg)
    Movie.where(rating: rating_arg)
  end


end