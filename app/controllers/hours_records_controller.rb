class HoursRecordsController < ApplicationController
  before_action :set_hours_record, only: [:show, :edit, :update, :destroy, :show_workflow, :set_workflow]

  # GET /hours_records
  # GET /hours_records.json
  def index
    @hours_records = HoursRecord.all.includes(:activity, :bay, :improductive_reason, :main_skill, :main_equipment, :project, :voltage_level, :profile)
  end

  # GET /hours_records/1
  # GET /hours_records/1.json
  def show
  end

  # GET /hours_records/new
  def new
    @hours_record = HoursRecord.new
    # logger.info current_user.profile.id
    # @hours_record.comments.build(profile_id: current_user.profile.id)
  end

  # GET /hours_records/1/edit
  def edit
    logger.info current_user.profile.id
    @hours_record.comments.build(profile_id: current_user.profile.id)
  end

  # POST /hours_records
  # POST /hours_records.json
  def create
    @hours_record = HoursRecord.new(hours_record_params)
    @hours_record.record_doc.attach(params[:record_doc])

    respond_to do |format|
      if @hours_record.save
        format.html { redirect_to @hours_record, notice: 'Hours record was successfully created.' }
        format.json { render :show, status: :created, location: @hours_record }
      else
        format.html { render :new }
        format.json { render json: @hours_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hours_records/1
  # PATCH/PUT /hours_records/1.json
  def update
    respond_to do |format|
      self.set_workflow
       
      if @hours_record.update(hours_record_params)
        format.html { redirect_to @hours_record, notice: 'Hours record was successfully updated.' }
        format.json { render :show, status: :ok, location: @hours_record }
      else
        format.html { render :edit }
        format.json { render json: @hours_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hours_records/1
  # DELETE /hours_records/1.json
  def destroy
    @hours_record.destroy
    respond_to do |format|
      format.html { redirect_to hours_records_url, notice: 'Hours record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def set_workflow

    if params[:commit] ==  'Reprovar Horas'
      @hours_record.set_rejected
    elsif params[:commit] == 'Aprovar Horas'
      @hours_record.set_approved
    elsif params[:commit] == 'Devolver para Revisão'
      @hours_record.set_under_revision
    else
      @hours_record.set_under_analisys
    end

  end

  def show_workflow
    @hours_record.comments.build(profile_id: current_user.profile.id)
    
  end
  
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hours_record
      #  @hours_record = HoursRecord.where(id: params[:id]).includes(:activity, :bay, :improductive_reason, :main_skill, :main_equipment, :project, :voltage_level, :profile).first
      @hours_record = HoursRecord.find(params[:id])
      #  @hours_record = HoursRecord.includes(:activity, :bay, :improductive_reason, :main_skill, :main_equipment, :project, :voltage_level, :profile).find(params[:id])
      # @hours_record = HoursRecord.all.includes(:activity, :bay, :improductive_reason, :main_skill, :main_equipment, :project, :voltage_level, :profile).find(params[:id])

    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def hours_record_params
      params.require(:hours_record).permit(:day, :man_hour, :activity_id, :project_id, :profile_id, :bay_id, :improductive_reason_id,
                                           :voltage_level_id, :main_skill_id,:main_equipment_id,:record_doc, :description, :improductive ,
                                          comments_attributes: [:id, :body, :profile_id])
    end
    
end
