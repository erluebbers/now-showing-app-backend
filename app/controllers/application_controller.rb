class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/theaters" do
    theaters = Theater.all
    theaters.to_json(include: :movies)
  end

  get "/movies" do 
    movies = Movie.all
    movies.to_json(include: :theaters)
  end

  get "/theaters/:id" do
    theater = Theater.find(params[:id])
    theater.to_json(include: :movies)
  end

  get "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.to_json(include: :theaters)
  end

end
