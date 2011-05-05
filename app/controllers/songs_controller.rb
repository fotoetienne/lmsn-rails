class SongsController < ApplicationController
  def index
    @dj = Dj.find_by_id(params[:dj_id])
    @songs = Song.find_all_by_dj_id(params[:dj_id])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @songs }
      format.json  { render :json => @songs }
    end
  end

  def edit
  end

  def show
  end

  def new
  end

end
