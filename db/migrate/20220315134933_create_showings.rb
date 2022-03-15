class CreateShowings < ActiveRecord::Migration[6.1]
  def change
    create_table :showings do |t|
      t.integer :theater_id
      t.integer :movie_id
    end
  end
end
