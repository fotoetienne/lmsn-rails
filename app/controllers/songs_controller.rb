class SongsController < ApplicationController
  def index
    @dj = Dj.find_by_id(params[:dj_id])
    @songs = Song.find_all_by_dj_id(params[:dj_id])
  end

  def edit
  end

  def show
  end

  def new
  end

end
