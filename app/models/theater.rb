class Theater < ActiveRecord::Base
  has_many :showings
  has_many :movies, through: :showings

end