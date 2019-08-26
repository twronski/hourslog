class MainSkillsController < ApplicationController
  before_action :set_main_skill, only: [:show, :edit, :update, :destroy]

  # GET /main_skills
  # GET /main_skills.json
  def index
    @main_skills = MainSkill.all
  end

  # GET /main_skills/1
  # GET /main_skills/1.json
  def show
  end

  # GET /main_skills/new
  def new
    @main_skill = MainSkill.new
  end

  # GET /main_skills/1/edit
  def edit
  end

  # POST /main_skills
  # POST /main_skills.json
  def create
    @main_skill = MainSkill.new(main_skill_params)

    respond_to do |format|
      if @main_skill.save
        format.html { redirect_to @main_skill, notice: 'Main skill was successfully created.' }
        format.json { render :show, status: :created, location: @main_skill }
      else
        format.html { render :new }
        format.json { render json: @main_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_skills/1
  # PATCH/PUT /main_skills/1.json
  def update
    respond_to do |format|
      if @main_skill.update(main_skill_params)
        format.html { redirect_to @main_skill, notice: 'Main skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_skill }
      else
        format.html { render :edit }
        format.json { render json: @main_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_skills/1
  # DELETE /main_skills/1.json
  def destroy
    @main_skill.destroy
    respond_to do |format|
      format.html { redirect_to main_skills_url, notice: 'Main skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_skill
      @main_skill = MainSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_skill_params
      params.require(:main_skill).permit(:name)
    end
end
