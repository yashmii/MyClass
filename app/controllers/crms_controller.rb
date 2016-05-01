class CrmsController < ApplicationController
  before_action :set_crm, only: [:show, :edit, :update, :destroy]

  # GET /crms
  # GET /crms.json
  def index
    @crms = Crm.all
  end

  # GET /crms/1
  # GET /crms/1.json
  def show
  end

  # GET /crms/new
  def new
    @crm = Crm.new
  end

  # GET /crms/1/edit
  def edit
  end

  # POST /crms
  # POST /crms.json
  def create
    @crm = Crm.new(crm_params)

    respond_to do |format|
      if @crm.save
        format.html { redirect_to client_path(@crm.client), notice: 'Crm was successfully created.' }
        format.json { render :show, status: :created, location: @crm }
      else
        format.html { render :new }
        format.json { render json: @crm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crms/1
  # PATCH/PUT /crms/1.json
  def update
    respond_to do |format|
      if @crm.update(crm_params)
        format.html { redirect_to @crm, notice: 'Crm was successfully updated.' }
        format.json { render :show, status: :ok, location: @crm }
      else
        format.html { render :edit }
        format.json { render json: @crm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crms/1
  # DELETE /crms/1.json
  def destroy
    @crm.destroy
    respond_to do |format|
      format.html { redirect_to crms_url, notice: 'Crm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crm
      @crm = Crm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crm_params
      params.require(:crm).permit(:client_id, :info, :teacher_id, :time)
    end
end
