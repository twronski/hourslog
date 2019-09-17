class MainEquipmentsController < ApplicationController
  before_action :set_main_equipment, only: [:show, :edit, :update, :destroy]

  # GET /main_equipments
  # GET /main_equipments.json
  def index
    @main_equipments = MainEquipment.all
  end

  # GET /main_equipments/1
  # GET /main_equipments/1.json
  def show
  end

  # GET /main_equipments/new
  def new
    @main_equipment = MainEquipment.new
  end

  # GET /main_equipments/1/edit
  def edit
  end

  # POST /main_equipments
  # POST /main_equipments.json
  def create
    @main_equipment = MainEquipment.new(main_equipment_params)

    respond_to do |format|
      if @main_equipment.save
        format.html { redirect_to @main_equipment, notice: 'Main equipment was successfully created.' }
        format.json { render :show, status: :created, location: @main_equipment }
      else
        format.html { render :new }
        format.json { render json: @main_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_equipments/1
  # PATCH/PUT /main_equipments/1.json
  def update
    respond_to do |format|
      if @main_equipment.update(main_equipment_params)
        format.html { redirect_to @main_equipment, notice: 'Main equipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_equipment }
      else
        format.html { render :edit }
        format.json { render json: @main_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_equipments/1
  # DELETE /main_equipments/1.json
  def destroy
    @main_equipment.destroy
    respond_to do |format|
      format.html { redirect_to main_equipments_url, notice: 'Main equipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_equipment
      @main_equipment = MainEquipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_equipment_params
      params.require(:main_equipment).permit(:name)
    end
end
