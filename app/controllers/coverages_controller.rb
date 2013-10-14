class CoveragesController < ApplicationController
  # GET /coverages
  # GET /coverages.json
  def index
    @coverages = Coverage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coverages }
    end
  end

  # GET /coverages/1
  # GET /coverages/1.json
  def show
    @coverage = Coverage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coverage }
    end
  end

  # GET /coverages/new
  # GET /coverages/new.json
  def new
    @coverage = Coverage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coverage }
    end
  end

  # GET /coverages/1/edit
  def edit
    @coverage = Coverage.find(params[:id])
  end

  # POST /coverages
  # POST /coverages.json
  def create
    @coverage = Coverage.new(params[:coverage])

    respond_to do |format|
      if @coverage.save
        format.html { redirect_to @coverage, notice: 'Coverage was successfully created.' }
        format.json { render json: @coverage, status: :created, location: @coverage }
      else
        format.html { render action: "new" }
        format.json { render json: @coverage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coverages/1
  # PUT /coverages/1.json
  def update
    @coverage = Coverage.find(params[:id])

    respond_to do |format|
      if @coverage.update_attributes(params[:coverage])
        format.html { redirect_to @coverage, notice: 'Coverage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coverage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coverages/1
  # DELETE /coverages/1.json
  def destroy
    @coverage = Coverage.find(params[:id])
    @coverage.destroy

    respond_to do |format|
      format.html { redirect_to coverages_url }
      format.json { head :no_content }
    end
  end
end
