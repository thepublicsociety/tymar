class SecretsController < ApplicationController
  # GET /secrets
  # GET /secrets.json
  def index
    @secrets = Secret.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @secrets }
    end
  end

  # GET /secrets/1
  # GET /secrets/1.json
  def show
    @secret = Secret.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @secret }
    end
  end

  # GET /secrets/new
  # GET /secrets/new.json
  def new
    @secret = Secret.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @secret }
    end
  end

  # GET /secrets/1/edit
  def edit
    @secret = Secret.find(params[:id])
  end

  # POST /secrets
  # POST /secrets.json
  def create
    @secret = Secret.new(params[:secret])

    respond_to do |format|
      if @secret.save
        format.html { redirect_to @secret, notice: 'Secret was successfully created.' }
        format.json { render json: @secret, status: :created, location: @secret }
      else
        format.html { render action: "new" }
        format.json { render json: @secret.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /secrets/1
  # PUT /secrets/1.json
  def update
    @secret = Secret.find(params[:id])

    respond_to do |format|
      if @secret.update_attributes(params[:secret])
        format.html { redirect_to @secret, notice: 'Secret was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @secret.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secrets/1
  # DELETE /secrets/1.json
  def destroy
    @secret = Secret.find(params[:id])
    @secret.destroy

    respond_to do |format|
      format.html { redirect_to secrets_url }
      format.json { head :no_content }
    end
  end
end
