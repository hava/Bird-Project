class BirdListsController < ApplicationController


  # GET /bird_lists
  # GET /bird_lists.xml
  def index
    @bird_lists = BirdList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bird_lists }
    end
  end

  # GET /bird_lists/1
  # GET /bird_lists/1.xml
  def show
    @bird_list = BirdList.find(params[:id])
    @bird_entries = BirdEntry.paginate :page => params[:page]
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bird_list }
    end
  end

  # GET /bird_lists/new
  # GET /bird_lists/new.xml
  def new
    @bird_list = BirdList.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bird_list }
    end
  end

  # GET /bird_lists/1/edit
  def edit
    @bird_list = BirdList.find(params[:id])
  end

  # POST /bird_lists
  # POST /bird_lists.xml
  def create
    @bird_list = BirdList.new(params[:bird_list])

    respond_to do |format|
      if @bird_list.save
        format.html { redirect_to(@bird_list, :notice => 'Birdlist was successfully created.') }
        format.xml  { render :xml => @bird_list, :status => :created, :location => @bird_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bird_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bird_lists/1
  # PUT /bird_lists/1.xml
  def update
    @bird_list = BirdList.find(params[:id])

    respond_to do |format|
      if @bird_list.update_attributes(params[:bird_list])
        format.html { redirect_to(@bird_list, :notice => 'Bird list was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bird_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bird_lists/1
  # DELETE /bird_lists/1.xml
  def destroy
    @bird_list = BirdList.find(params[:id])
    @bird_list.destroy

    respond_to do |format|
      format.html { redirect_to(bird_lists_url) }
      format.xml  { head :ok }
    end
  end
end
