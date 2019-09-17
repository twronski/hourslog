class SuggestionBoxesController < ApplicationController
  before_action :set_suggestion_box, only: [:show, :edit, :update, :destroy]

  # GET /suggestion_boxes
  # GET /suggestion_boxes.json
  def index
    @suggestion_boxes = SuggestionBox.all
  end

  # GET /suggestion_boxes/1
  # GET /suggestion_boxes/1.json
  def show
  end

  # GET /suggestion_boxes/new
  def new
    @suggestion_box = SuggestionBox.new
  end

  # GET /suggestion_boxes/1/edit
  def edit
  end

  # POST /suggestion_boxes
  # POST /suggestion_boxes.json
  def create
    @suggestion_box = SuggestionBox.new(suggestion_box_params)

    respond_to do |format|
      if @suggestion_box.save
        format.html { redirect_to @suggestion_box, notice: 'Suggestion box was successfully created.' }
        format.json { render :show, status: :created, location: @suggestion_box }
      else
        format.html { render :new }
        format.json { render json: @suggestion_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suggestion_boxes/1
  # PATCH/PUT /suggestion_boxes/1.json
  def update
    respond_to do |format|
      if @suggestion_box.update(suggestion_box_params)
        format.html { redirect_to @suggestion_box, notice: 'Suggestion box was successfully updated.' }
        format.json { render :show, status: :ok, location: @suggestion_box }
      else
        format.html { render :edit }
        format.json { render json: @suggestion_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suggestion_boxes/1
  # DELETE /suggestion_boxes/1.json
  def destroy
    @suggestion_box.destroy
    respond_to do |format|
      format.html { redirect_to suggestion_boxes_url, notice: 'Suggestion box was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suggestion_box
      @suggestion_box = SuggestionBox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suggestion_box_params
      params.require(:suggestion_box).permit(:name, :description, :status)
    end
end
