class ProfileSubSkillsController < ApplicationController
  before_action :set_profile_sub_skill, only: [:show, :edit, :update, :destroy]

  # GET /profile_sub_skills
  # GET /profile_sub_skills.json
  def index
    @profile_sub_skills = ProfileSubSkill.all
  end

  # GET /profile_sub_skills/1
  # GET /profile_sub_skills/1.json
  def show
  end

  # GET /profile_sub_skills/new
  def new
    @profile_sub_skill = ProfileSubSkill.new
  end

  # GET /profile_sub_skills/1/edit
  def edit
  end

  # POST /profile_sub_skills
  # POST /profile_sub_skills.json
  def create
    @profile_sub_skill = ProfileSubSkill.new(profile_sub_skill_params)

    respond_to do |format|
      if @profile_sub_skill.save
        format.html { redirect_to @profile_sub_skill, notice: 'Profile sub skill was successfully created.' }
        format.json { render :show, status: :created, location: @profile_sub_skill }
      else
        format.html { render :new }
        format.json { render json: @profile_sub_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_sub_skills/1
  # PATCH/PUT /profile_sub_skills/1.json
  def update
    respond_to do |format|
      if @profile_sub_skill.update(profile_sub_skill_params)
        format.html { redirect_to @profile_sub_skill, notice: 'Profile sub skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile_sub_skill }
      else
        format.html { render :edit }
        format.json { render json: @profile_sub_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_sub_skills/1
  # DELETE /profile_sub_skills/1.json
  def destroy
    @profile_sub_skill.destroy
    respond_to do |format|
      format.html { redirect_to profile_sub_skills_url, notice: 'Profile sub skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_sub_skill
      @profile_sub_skill = ProfileSubSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_sub_skill_params
      params.require(:profile_sub_skill).permit(:profile_id, :sub_skill_id, :level, :status, :expiration_date)
    end
end
