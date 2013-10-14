class PhotographsController < ApplicationController
  # GET /photographs
  # GET /photographs.json
  def index
    @photographs = Photograph.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photographs }
    end
  end

  # GET /photographs/1
  # GET /photographs/1.json
  def show
    @photograph = Photograph.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photograph }
    end
  end

  # GET /photographs/new
  # GET /photographs/new.json
  def new
    @photograph = Photograph.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photograph }
    end
  end

  # GET /photographs/1/edit
  def edit
    @photograph = Photograph.find(params[:id])
  end

  # POST /photographs
  # POST /photographs.json
  def create
    @photograph = Photograph.new(params[:photograph])

    respond_to do |format|
      if @photograph.save
        format.html { redirect_to @photograph, notice: 'Photograph was successfully created.' }
        format.json { render json: @photograph, status: :created, location: @photograph }
      else
        format.html { render action: "new" }
        format.json { render json: @photograph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photographs/1
  # PUT /photographs/1.json
  def update
    @photograph = Photograph.find(params[:id])

    respond_to do |format|
      if @photograph.update_attributes(params[:photograph])
        format.html { redirect_to @photograph, notice: 'Photograph was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photograph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photographs/1
  # DELETE /photographs/1.json
  def destroy
    @photograph = Photograph.find(params[:id])
    @photograph.destroy

    respond_to do |format|
      format.html { redirect_to photographs_url }
      format.json { head :no_content }
    end
  end
end
