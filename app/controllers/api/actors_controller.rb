class Api::ActorsController < ApplicationController

  def show
    @actor = Actor.find_by(id:params[:id])
    render "show.json.jb"
  end

end
