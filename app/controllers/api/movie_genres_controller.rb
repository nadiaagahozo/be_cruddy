class Api::MovieGenresController < ApplicationController
  def create
    @actor = Actor.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
    )
    if @actor.save
      render "show.json.jb"
    else
      "failed to save #{@actor.errors.full_messages}"
    end
  end
end
