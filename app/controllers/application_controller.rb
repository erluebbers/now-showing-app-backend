class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
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

  patch "/theaters/:id" do
    theater = Theater.find(params[:id])
    theater.update(
      name: params[:name],
      number_of_screens: params[:number_of_screens],
      location: params[:location]
    )
    theater.to_json
  end

  post "/movies" do 
    movie = Movie.create(
      name: params[:name],
      rating: params[:rating],
      opening_date: params[:opening_date]
    )
    showing = movie.showings.create(
      theater_id: params[:theater_id]
    )
    movie.to_json(include: :theaters)
  end

end


