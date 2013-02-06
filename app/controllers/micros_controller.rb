class MicrosController < ApplicationController
  # GET /micros
  # GET /micros.json
  def index
    @micros = Micro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micros }
    end
  end

  # GET /micros/1
  # GET /micros/1.json
  def show
    @micro = Micro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micro }
    end
  end

  # GET /micros/new
  # GET /micros/new.json
  def new
    @micro = Micro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micro }
    end
  end

  # GET /micros/1/edit
  def edit
    @micro = Micro.find(params[:id])
  end

  # POST /micros
  # POST /micros.json
  def create
    @micro = Micro.new(params[:micro])

    respond_to do |format|
      if @micro.save
        format.html { redirect_to @micro, notice: 'Micro was successfully created.' }
        format.json { render json: @micro, status: :created, location: @micro }
      else
        format.html { render action: "new" }
        format.json { render json: @micro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micros/1
  # PUT /micros/1.json
  def update
    @micro = Micro.find(params[:id])

    respond_to do |format|
      if @micro.update_attributes(params[:micro])
        format.html { redirect_to @micro, notice: 'Micro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micros/1
  # DELETE /micros/1.json
  def destroy
    @micro = Micro.find(params[:id])
    @micro.destroy

    respond_to do |format|
      format.html { redirect_to micros_url }
      format.json { head :no_content }
    end
  end
end
