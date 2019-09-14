class DocTemplatesController < ApplicationController
  before_action :set_doc_template, only: [:show, :edit, :update, :destroy]

  # GET /doc_templates
  # GET /doc_templates.json
  def index
    @doc_templates = DocTemplate.all
  end

  # GET /doc_templates/1
  # GET /doc_templates/1.json
  def show
  end

  # GET /doc_templates/new
  def new
    @doc_template = DocTemplate.new
  end

  # GET /doc_templates/1/edit
  def edit
  end

  # POST /doc_templates
  # POST /doc_templates.json
  def create
    @doc_template = DocTemplate.new(doc_template_params)

    respond_to do |format|
      if @doc_template.save
        format.html { redirect_to @doc_template, notice: 'Doc template was successfully created.' }
        format.json { render :show, status: :created, location: @doc_template }
      else
        format.html { render :new }
        format.json { render json: @doc_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doc_templates/1
  # PATCH/PUT /doc_templates/1.json
  def update
    respond_to do |format|
      if @doc_template.update(doc_template_params)
        format.html { redirect_to @doc_template, notice: 'Doc template was successfully updated.' }
        format.json { render :show, status: :ok, location: @doc_template }
      else
        format.html { render :edit }
        format.json { render json: @doc_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doc_templates/1
  # DELETE /doc_templates/1.json
  def destroy
    @doc_template.destroy
    respond_to do |format|
      format.html { redirect_to doc_templates_url, notice: 'Doc template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc_template
      @doc_template = DocTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doc_template_params
      params.require(:doc_template).permit(:title, :description)
    end
end
