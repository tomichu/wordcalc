class GwCalculationsController < ApplicationController
  before_action :set_gw_calculation, only: [:show, :edit, :update, :destroy]

  # GET /gw_calculations
  # GET /gw_calculations.json
  def index
    @gw_calculations = GwCalculation.all
  end

  # GET /gw_calculations/1
  # GET /gw_calculations/1.json
  def show
  end

  # GET /gw_calculations/new
  def new
    @gw_calculation = GwCalculation.new
  end

  # GET /gw_calculations/1/edit
  def edit
  end

  # POST /gw_calculations
  # POST /gw_calculations.json
  def create
    @gw_calculation = GwCalculation.new(gw_calculation_params)

    respond_to do |format|
      if @gw_calculation.save
        format.html { redirect_to @gw_calculation, notice: 'Gw calculation was successfully created.' }
        format.json { render :show, status: :created, location: @gw_calculation }
      else
        format.html { render :new }
        format.json { render json: @gw_calculation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gw_calculations/1
  # PATCH/PUT /gw_calculations/1.json
  def update
    respond_to do |format|
      if @gw_calculation.update(gw_calculation_params)
        format.html { redirect_to @gw_calculation, notice: 'Gw calculation was successfully updated.' }
        format.json { render :show, status: :ok, location: @gw_calculation }
      else
        format.html { render :edit }
        format.json { render json: @gw_calculation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gw_calculations/1
  # DELETE /gw_calculations/1.json
  def destroy
    @gw_calculation.destroy
    respond_to do |format|
      format.html { redirect_to gw_calculations_url, notice: 'Gw calculation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gw_calculation
      @gw_calculation = GwCalculation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gw_calculation_params
      params.require(:gw_calculation).permit(:course, :mon, :tue, :wed, :thr, :fri)
    end
end
