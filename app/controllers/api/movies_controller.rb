class Api::MoviesController < ApplicationController
  def show
    @movie = Movie.find_by(id: params[:id])
    render "show.json.jb"
  end
  
  def index
    @movies = Movie.all.where(english: true)
    render "index.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    if @movie.save
      render "show.json.jb"
    else
      render json: "failed to save #{@movie.errors.full_messages}" 
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    if @movie.save
      render "show.json.jb"
    else 
      render json: "failed to save #{@movie.errors.full_messages}"
    end
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy
    render json: {message: "Photo successfully destroyed."}
  end
end
