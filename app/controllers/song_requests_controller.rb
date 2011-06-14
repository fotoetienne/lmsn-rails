class SongRequestsController < ApplicationController
  # GET /song_requests
  # GET /song_requests.xml
  def index
    @song_requests = SongRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @song_requests }
    end
  end

  # GET /song_requests/1
  # GET /song_requests/1.xml
  def show
    @song_request = SongRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @song_request }
    end
  end

  # GET /song_requests/new
  # GET /song_requests/new.xml
  def new
    @song_request = SongRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @song_request }
    end
  end

  # GET /song_requests/1/edit
  def edit
    @song_request = SongRequest.find(params[:id])
  end

  # POST /song_requests
  # POST /song_requests.xml
  def create
    @song_request = SongRequest.new(params[:song_request])

    respond_to do |format|
      if @song_request.save
        format.html { redirect_to(@song_request, :notice => 'Song request was successfully created.') }
        format.xml  { render :xml => @song_request, :status => :created, :location => @song_request }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @song_request.errors, :status => :unprocessable_entity }
      end
    end
  end


  def api_request
    @song_request = SongRequest.new(params[:song_request])

    respond_to do |format|
      if @song_request.save
        format.html { redirect_to(@song_request, :notice => 'Song request was successfully created.') }
        format.xml  { render :xml => @song_request, :status => :created, :location => @song_request }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @song_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /song_requests/1
  # PUT /song_requests/1.xml
  def update
    @song_request = SongRequest.find(params[:id])

    respond_to do |format|
      if @song_request.update_attributes(params[:song_request])
        format.html { redirect_to(@song_request, :notice => 'Song request was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @song_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /song_requests/1
  # DELETE /song_requests/1.xml
  def destroy
    @song_request = SongRequest.find(params[:id])
    @song_request.destroy

    respond_to do |format|
      format.html { redirect_to(song_requests_url) }
      format.xml  { head :ok }
    end
  end
end
