class CstatusesController < ApplicationController
  before_action :set_cstatus, only: [:show, :edit, :update, :destroy]

  # GET /cstatuses
  # GET /cstatuses.json
  def index
    @cstatuses = Cstatus.all
  end

  # GET /cstatuses/1
  # GET /cstatuses/1.json
  def show
  end

  # GET /cstatuses/new
  def new
    @cstatus = Cstatus.new
  end

  # GET /cstatuses/1/edit
  def edit
  end

  # POST /cstatuses
  # POST /cstatuses.json
  def create
    @cstatus = Cstatus.new(cstatus_params)

    respond_to do |format|
      if @cstatus.save
        format.html { redirect_to @cstatus, notice: 'Cstatus was successfully created.' }
        format.json { render :show, status: :created, location: @cstatus }
      else
        format.html { render :new }
        format.json { render json: @cstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cstatuses/1
  # PATCH/PUT /cstatuses/1.json
  def update
    respond_to do |format|
      if @cstatus.update(cstatus_params)
        format.html { redirect_to @cstatus, notice: 'Cstatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @cstatus }
      else
        format.html { render :edit }
        format.json { render json: @cstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cstatuses/1
  # DELETE /cstatuses/1.json
  def destroy
    @cstatus.destroy
    respond_to do |format|
      format.html { redirect_to cstatuses_url, notice: 'Cstatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cstatus
      @cstatus = Cstatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cstatus_params
      params.require(:cstatus).permit(:cstatus)
    end
end
