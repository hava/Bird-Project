class BirdlistsController < ApplicationController


  # GET /birdlists
  # GET /birdlists.xml
  def index
    @birdlists = Birdlist.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @birdlists }
    end
  end

  # GET /birdlists/1
  # GET /birdlists/1.xml
  def show
    @birdlist = Birdlist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @birdlist }
    end
  end

  # GET /birdlists/new
  # GET /birdlists/new.xml
  def new
    @birdlist = Birdlist.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @birdlist }
    end
  end

  # GET /birdlists/1/edit
  def edit
    @birdlist = Birdlist.find(params[:id])
  end

  # POST /birdlists
  # POST /birdlists.xml
  def create
    @birdlist = Birdlist.new(params[:birdlist])

    respond_to do |format|
      if @birdlist.save
        format.html { redirect_to(@birdlist, :notice => 'Birdlist was successfully created.') }
        format.xml  { render :xml => @birdlist, :status => :created, :location => @birdlist }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @birdlist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /birdlists/1
  # PUT /birdlists/1.xml
  def update
    @birdlist = Birdlist.find(params[:id])

    respond_to do |format|
      if @birdlist.update_attributes(params[:birdlist])
        format.html { redirect_to(@birdlist, :notice => 'Birdlist was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @birdlist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /birdlists/1
  # DELETE /birdlists/1.xml
  def destroy
    @birdlist = Birdlist.find(params[:id])
    @birdlist.destroy

    respond_to do |format|
      format.html { redirect_to(birdlists_url) }
      format.xml  { head :ok }
    end
  end
end
