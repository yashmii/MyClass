class TpricesController < ApplicationController
  before_action :set_tprice, only: [:show, :edit, :update, :destroy]

  # GET /tprices
  # GET /tprices.json
  def index
    @tprices = Tprice.all
  end

  # GET /tprices/1
  # GET /tprices/1.json
  def show
  end

  # GET /tprices/new
  def new
    @tprice = Tprice.new
  end

  # GET /tprices/1/edit
  def edit
  end

  # POST /tprices
  # POST /tprices.json
  def create
    @tprice = Tprice.new(tprice_params)

    respond_to do |format|
      if @tprice.save
        format.html { redirect_to @tprice, notice: 'Tprice was successfully created.' }
        format.json { render :show, status: :created, location: @tprice }
      else
        format.html { render :new }
        format.json { render json: @tprice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tprices/1
  # PATCH/PUT /tprices/1.json
  def update
    respond_to do |format|
      if @tprice.update(tprice_params)
        format.html { redirect_to @tprice, notice: 'Tprice was successfully updated.' }
        format.json { render :show, status: :ok, location: @tprice }
      else
        format.html { render :edit }
        format.json { render json: @tprice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tprices/1
  # DELETE /tprices/1.json
  def destroy
    @tprice.destroy
    respond_to do |format|
      format.html { redirect_to tprices_url, notice: 'Tprice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tprice
      @tprice = Tprice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tprice_params
      params.require(:tprice).permit(:name, :tprice, :active)
    end
end
