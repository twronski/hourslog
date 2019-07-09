class VoltageLevelsController < ApplicationController
  before_action :set_voltage_level, only: [:show, :edit, :update, :destroy]

  # GET /voltage_levels
  # GET /voltage_levels.json
  def index
    @voltage_levels = VoltageLevel.all
  end

  # GET /voltage_levels/1
  # GET /voltage_levels/1.json
  def show
  end

  # GET /voltage_levels/new
  def new
    @voltage_level = VoltageLevel.new
  end

  # GET /voltage_levels/1/edit
  def edit
  end

  # POST /voltage_levels
  # POST /voltage_levels.json
  def create
    @voltage_level = VoltageLevel.new(voltage_level_params)

    respond_to do |format|
      if @voltage_level.save
        format.html { redirect_to @voltage_level, notice: 'Voltage level was successfully created.' }
        format.json { render :show, status: :created, location: @voltage_level }
      else
        format.html { render :new }
        format.json { render json: @voltage_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voltage_levels/1
  # PATCH/PUT /voltage_levels/1.json
  def update
    respond_to do |format|
      if @voltage_level.update(voltage_level_params)
        format.html { redirect_to @voltage_level, notice: 'Voltage level was successfully updated.' }
        format.json { render :show, status: :ok, location: @voltage_level }
      else
        format.html { render :edit }
        format.json { render json: @voltage_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voltage_levels/1
  # DELETE /voltage_levels/1.json
  def destroy
    @voltage_level.destroy
    respond_to do |format|
      format.html { redirect_to voltage_levels_url, notice: 'Voltage level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voltage_level
      @voltage_level = VoltageLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voltage_level_params
      params.require(:voltage_level).permit(:name)
    end
end
