class LopsController < ApplicationController
  # GET /lops
  # GET /lops.json
  def index
    @lops = Lop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @lops }
    end
  end

  # GET /lops/1
  # GET /lops/1.json
  def show
    @lop = Lop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @lop }
    end
  end

  # GET /lops/new
  # GET /lops/new.json
  def new
    @lop = Lop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @lop }
    end
  end

  # GET /lops/1/edit
  def edit
    @lop = Lop.find(params[:id])
  end

  # POST /lops
  # POST /lops.json
  def create
  p "@@@@@@@@@@@@@@@@@@@@@@@@@@#{params[:commit].inspect}"
    @lop = Lop.new(params[:lop])
    if params[:commit] == "Save as Draft"
    @lop.save(:validate => false)
    @lop.instantiate_draft!
    respond_to do |format|
    format.html { redirect_to @lop, :notice => 'Draft Saved Succesfully' }
    end
    end
   
  end

  # PUT /lops/1
  # PUT /lops/1.json
  def update
    @lop = Lop.find(params[:id])

    respond_to do |format|
      if @lop.update_attributes(params[:lop])
        format.html { redirect_to @lop, :notice => 'Lop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @lop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lops/1
  # DELETE /lops/1.json
  def destroy
    @lop = Lop.find(params[:id])
    @lop.destroy

    respond_to do |format|
      format.html { redirect_to lops_url }
      format.json { head :no_content }
    end
  end
end
