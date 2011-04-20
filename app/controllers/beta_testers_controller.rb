class BetaTestersController < ApplicationController
  # GET /beta_testers
  # GET /beta_testers.xml
  def index
    @beta_testers = BetaTester.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beta_testers }
    end
  end

  # GET /beta_testers/1
  # GET /beta_testers/1.xml
  def show
    @beta_tester = BetaTester.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beta_tester }
    end
  end

  # GET /beta_testers/new
  # GET /beta_testers/new.xml
  def new
    @beta_tester = BetaTester.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beta_tester }
    end
  end

  # GET /beta_testers/1/edit
  def edit
    @beta_tester = BetaTester.find(params[:id])
  end

  # POST /beta_testers
  # POST /beta_testers.xml
  def create
    @beta_tester = BetaTester.new(params[:beta_tester])

    respond_to do |format|
      if @beta_tester.save
        format.html { redirect_to(@beta_tester, :notice => 'Beta tester was successfully created.') }
        format.xml  { render :xml => @beta_tester, :status => :created, :location => @beta_tester }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @beta_tester.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beta_testers/1
  # PUT /beta_testers/1.xml
  def update
    @beta_tester = BetaTester.find(params[:id])

    respond_to do |format|
      if @beta_tester.update_attributes(params[:beta_tester])
        format.html { redirect_to(@beta_tester, :notice => 'Beta tester was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @beta_tester.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /beta_testers/1
  # DELETE /beta_testers/1.xml
  def destroy
    @beta_tester = BetaTester.find(params[:id])
    @beta_tester.destroy

    respond_to do |format|
      format.html { redirect_to(beta_testers_url) }
      format.xml  { head :ok }
    end
  end
end
