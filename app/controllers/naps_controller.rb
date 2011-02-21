class NapsController < ApplicationController
  # GET /naps
  # GET /naps.xml
  def index
    @naps = Nap.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @naps }
    end
  end

  # GET /naps/1
  # GET /naps/1.xml
  def show
    @nap = Nap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nap }
    end
  end

  # GET /naps/new
  # GET /naps/new.xml
  def new
    @nap = Nap.new
	@nap.babyname="Eli"
	@nap.email="allisonberg@yahoo.com"
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nap }
    end
  end

  # GET /naps/1/edit
  def edit
    @nap = Nap.find(params[:id])
  end

  # POST /naps
  # POST /naps.xml
  def create
    @nap = Nap.new(params[:nap])
	@nap.babyname="Eli"
	@nap.email="allisonberg@yahoo.com"
    respond_to do |format|
      if @nap.save
        format.html { redirect_to(@nap, :notice => 'Nap was successfully created.') }
        format.xml  { render :xml => @nap, :status => :created, :location => @nap }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /naps/1
  # PUT /naps/1.xml
  def update
    @nap = Nap.find(params[:id])

    respond_to do |format|
      if @nap.update_attributes(params[:nap])
        format.html { redirect_to(@nap, :notice => 'Nap was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /naps/1
  # DELETE /naps/1.xml
  def destroy
    @nap = Nap.find(params[:id])
    @nap.destroy

    respond_to do |format|
      format.html { redirect_to(naps_url) }
      format.xml  { head :ok }
    end
  end
end
