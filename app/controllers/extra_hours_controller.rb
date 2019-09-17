class ExtraHoursController < ApplicationController
  before_action :set_extra_hour, only: [:show, :edit, :update, :destroy]

  # GET /extra_hours
  # GET /extra_hours.json
  def index
    @extra_hours = ExtraHour.all
  end

  # GET /extra_hours/1
  # GET /extra_hours/1.json
  def show
  end

  # GET /extra_hours/new
  def new
    @extra_hour = ExtraHour.new
  end

  # GET /extra_hours/1/edit
  def edit
  end

  # POST /extra_hours
  # POST /extra_hours.json
  def create
    @extra_hour = ExtraHour.new(extra_hour_params)

    respond_to do |format|
      if @extra_hour.save
        format.html { redirect_to @extra_hour, notice: 'Extra hour was successfully created.' }
        format.json { render :show, status: :created, location: @extra_hour }
      else
        format.html { render :new }
        format.json { render json: @extra_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extra_hours/1
  # PATCH/PUT /extra_hours/1.json
  def update
    respond_to do |format|
      if @extra_hour.update(extra_hour_params)
        format.html { redirect_to @extra_hour, notice: 'Extra hour was successfully updated.' }
        format.json { render :show, status: :ok, location: @extra_hour }
      else
        format.html { render :edit }
        format.json { render json: @extra_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extra_hours/1
  # DELETE /extra_hours/1.json
  def destroy
    @extra_hour.destroy
    respond_to do |format|
      format.html { redirect_to extra_hours_url, notice: 'Extra hour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extra_hour
      @extra_hour = ExtraHour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def extra_hour_params
      params.require(:extra_hour).permit(:project_id, :execution_date, :profile_id, :status)
    end
end
