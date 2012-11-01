class GaddsController < ApplicationController
  # GET /gadds
  # GET /gadds.json





  def index
    @gadds = Gadd.search(params[:search])
	 @json = Gadd.search(params[:search]).to_gmaps4rails

		#test, pour inclure la possibilité de se creer une geoad dans index, ca prend la variable:
		@gadd = Gadd.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gadds }
    end
  end

  # GET /gadds/1
  # GET /gadds/1.json
  def show
    @gadd = Gadd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gadd }
    end
  end

  # GET /gadds/new
  # GET /gadds/new.json
  def new
    @gadd = Gadd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gadd }
    end
  end

  # GET /gadds/1/edit
  def edit
    @gadd = Gadd.find(params[:id])
  end

  # POST /gadds
  # POST /gadds.json
  def create
    @gadd = Gadd.new(params[:gadd])
	 @gadd.gmaps = true
    respond_to do |format|
      if @gadd.save
        format.html { redirect_to @gadd, notice: 'Gadd was successfully created.' }
        format.json { render json: @gadd, status: :created, location: @gadd }
      else
        format.html { render action: "new" }
        format.json { render json: @gadd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gadds/1
  # PUT /gadds/1.json
  def update
    @gadd = Gadd.find(params[:id])

    respond_to do |format|
      if @gadd.update_attributes(params[:gadd])
        format.html { redirect_to @gadd, notice: 'Gadd was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gadd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gadds/1
  # DELETE /gadds/1.json
  def destroy
    @gadd = Gadd.find(params[:id])
    @gadd.destroy

    respond_to do |format|
      format.html { redirect_to gadds_url }
      format.json { head :no_content }
    end
  end
end
