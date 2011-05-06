class SongsController < ApplicationController
  def index
    @dj_id = params[:dj_id]
    @dj = Dj.find_by_id(@dj_id)
    if @by_artist
      @songs = Song.find_all_by_dj_id(@dj_id, :select => 'distinct artist', :order => 'artist')
    else
      @songs = Song.find_all_by_dj_id(@dj_id, :select => 'artist, title, id', :order => 'artist, title')
    end
    render_formats 
  end

  def artists_index
    @by_artist = true
    index
  end
  
  def artists_show
    @dj_id = params[:dj_id]
    @dj = Dj.find_by_id(@dj_id)
    @songs = Song.find_all_by_dj_id_and_artist(@dj_id, params[:artist], :select => 'artist, title, id', :order => 'artist, title')
    render_formats 
  end

  def edit
  end

  def show
  end

  def new
  end
  
  def render_formats
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @songs }
      format.json  { render :json => @songs }
    end
  end
end
