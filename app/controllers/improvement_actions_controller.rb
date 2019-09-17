class ImprovementActionsController < ApplicationController
  before_action :set_improvement_action, only: [:show, :edit, :update, :destroy]

  # GET /improvement_actions
  # GET /improvement_actions.json
  def index
    @improvement_actions = ImprovementAction.all
  end

  # GET /improvement_actions/1
  # GET /improvement_actions/1.json
  def show
  end

  # GET /improvement_actions/new
  def new
    @improvement_action = ImprovementAction.new
  end

  # GET /improvement_actions/1/edit
  def edit
  end

  # POST /improvement_actions
  # POST /improvement_actions.json
  def create
    @improvement_action = ImprovementAction.new(improvement_action_params)

    respond_to do |format|
      if @improvement_action.save
        format.html { redirect_to @improvement_action, notice: 'Improvement action was successfully created.' }
        format.json { render :show, status: :created, location: @improvement_action }
      else
        format.html { render :new }
        format.json { render json: @improvement_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /improvement_actions/1
  # PATCH/PUT /improvement_actions/1.json
  def update
    respond_to do |format|
      if @improvement_action.update(improvement_action_params)
        format.html { redirect_to @improvement_action, notice: 'Improvement action was successfully updated.' }
        format.json { render :show, status: :ok, location: @improvement_action }
      else
        format.html { render :edit }
        format.json { render json: @improvement_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /improvement_actions/1
  # DELETE /improvement_actions/1.json
  def destroy
    @improvement_action.destroy
    respond_to do |format|
      format.html { redirect_to improvement_actions_url, notice: 'Improvement action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_improvement_action
      @improvement_action = ImprovementAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def improvement_action_params
      params.require(:improvement_action).permit(:title, :description, :status)
    end
end
