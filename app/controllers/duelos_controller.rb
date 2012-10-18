class DuelosController < ApplicationController
  # GET /duelos
  # GET /duelos.json
  def index
    @duelos = Duelo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @duelos }
    end
  end

  # GET /duelos/1
  # GET /duelos/1.json
  def show
    @duelo = Duelo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @duelo }
    end
  end

  # GET /duelos/new
  # GET /duelos/new.json
  def new
    @duelo = Duelo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @duelo }
    end
  end

  # GET /duelos/1/edit
  def edit
    @duelo = Duelo.find(params[:id])
  end

  # POST /duelos
  # POST /duelos.json
  def create
    @duelo = Duelo.new(params[:duelo])

    respond_to do |format|
      if @duelo.save
        format.html { redirect_to @duelo, notice: 'Duelo was successfully created.' }
        format.json { render json: @duelo, status: :created, location: @duelo }
      else
        format.html { render action: "new" }
        format.json { render json: @duelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /duelos/1
  # PUT /duelos/1.json
  def update
    @duelo = Duelo.find(params[:id])

    respond_to do |format|
      if @duelo.update_attributes(params[:duelo])
        format.html { redirect_to @duelo, notice: 'Duelo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @duelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duelos/1
  # DELETE /duelos/1.json
  def destroy
    @duelo = Duelo.find(params[:id])
    @duelo.destroy

    respond_to do |format|
      format.html { redirect_to duelos_url }
      format.json { head :no_content }
    end
  end
end
