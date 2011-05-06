class DjsController < ApplicationController
  def index
    @djs = Dj.find(:all, :select => 'name, id', :order => 'name')
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @djs }
      format.json  { render :json => @djs }
    end
  end

  def new
  end

  def edit
  end

  def show
  end

end
