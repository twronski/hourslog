class AccessTemplatesController < ApplicationController
  before_action :set_access_template, only: [:show, :edit, :update, :destroy]

  # GET /access_templates
  # GET /access_templates.json
  def index
    @access_templates = AccessTemplate.all
  end

  # GET /access_templates/1
  # GET /access_templates/1.json
  def show
  end

  # GET /access_templates/new
  def new
    @access_template = AccessTemplate.new
  end

  # GET /access_templates/1/edit
  def edit
  end

  # POST /access_templates
  # POST /access_templates.json
  def create
    @access_template = AccessTemplate.new(access_template_params)

    respond_to do |format|
      if @access_template.save
        format.html { redirect_to @access_template, notice: 'Access template was successfully created.' }
        format.json { render :show, status: :created, location: @access_template }
      else
        format.html { render :new }
        format.json { render json: @access_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /access_templates/1
  # PATCH/PUT /access_templates/1.json
  def update
    respond_to do |format|
      if @access_template.update(access_template_params)
        format.html { redirect_to @access_template, notice: 'Access template was successfully updated.' }
        format.json { render :show, status: :ok, location: @access_template }
      else
        format.html { render :edit }
        format.json { render json: @access_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /access_templates/1
  # DELETE /access_templates/1.json
  def destroy
    @access_template.destroy
    respond_to do |format|
      format.html { redirect_to access_templates_url, notice: 'Access template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_access_template
      @access_template = AccessTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def access_template_params
      params.require(:access_template).permit(:name, :description, :mandatory)
    end
end
