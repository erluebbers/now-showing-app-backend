class Showing < ActiveRecord::Base
  belongs_to :movie
  belongs_to :theater

end