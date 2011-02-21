class DiaperChangesController < ApplicationController
  # GET /diaper_changes
  # GET /diaper_changes.xml
  def index
    @diaper_changes = DiaperChange.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @diaper_changes }
    end
  end

  # GET /diaper_changes/1
  # GET /diaper_changes/1.xml
  def show
    @diaper_change = DiaperChange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @diaper_change }
    end
  end

  # GET /diaper_changes/new
  # GET /diaper_changes/new.xml
  def new
    @diaper_change = DiaperChange.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @diaper_change }
    end
  end

  # GET /diaper_changes/1/edit
  def edit
    @diaper_change = DiaperChange.find(params[:id])
  end

  # POST /diaper_changes
  # POST /diaper_changes.xml
  def create
    @diaper_change = DiaperChange.new(params[:diaper_change])

    respond_to do |format|
      if @diaper_change.save
        format.html { redirect_to(@diaper_change, :notice => 'DiaperChange was successfully created.') }
        format.xml  { render :xml => @diaper_change, :status => :created, :location => @diaper_change }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @diaper_change.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /diaper_changes/1
  # PUT /diaper_changes/1.xml
  def update
    @diaper_change = DiaperChange.find(params[:id])

    respond_to do |format|
      if @diaper_change.update_attributes(params[:diaper_change])
        format.html { redirect_to(@diaper_change, :notice => 'DiaperChange was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @diaper_change.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /diaper_changes/1
  # DELETE /diaper_changes/1.xml
  def destroy
    @diaper_change = DiaperChange.find(params[:id])
    @diaper_change.destroy

    respond_to do |format|
      format.html { redirect_to(diaper_changes_url) }
      format.xml  { head :ok }
    end
  end
end
