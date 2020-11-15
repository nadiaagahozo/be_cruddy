class Api::ParamsController < ApplicationController
  
  
  def query
    @movie = Movie.find_by(year: params[:year].to_i)
    render "query.json.jb"
  end

  def body_params
    @actor = Actor.find_by(last_name: params[:last_name])
    render "body_params.json.jb"
  end

  def url_segment
    @movie = Movie.find_by(title: params[:title])
    render "url_segment.json.jb"
  end


end

