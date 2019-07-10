class ImproductiveReasonsController < ApplicationController
  before_action :set_improductive_reason, only: [:show, :edit, :update, :destroy]

  # GET /improductive_reasons
  # GET /improductive_reasons.json
  def index
    @improductive_reasons = ImproductiveReason.all
  end

  # GET /improductive_reasons/1
  # GET /improductive_reasons/1.json
  def show
  end

  # GET /improductive_reasons/new
  def new
    @improductive_reason = ImproductiveReason.new
  end

  # GET /improductive_reasons/1/edit
  def edit
  end

  # POST /improductive_reasons
  # POST /improductive_reasons.json
  def create
    @improductive_reason = ImproductiveReason.new(improductive_reason_params)

    respond_to do |format|
      if @improductive_reason.save
        format.html { redirect_to @improductive_reason, notice: 'Improductive reason was successfully created.' }
        format.json { render :show, status: :created, location: @improductive_reason }
      else
        format.html { render :new }
        format.json { render json: @improductive_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /improductive_reasons/1
  # PATCH/PUT /improductive_reasons/1.json
  def update
    respond_to do |format|
      if @improductive_reason.update(improductive_reason_params)
        format.html { redirect_to @improductive_reason, notice: 'Improductive reason was successfully updated.' }
        format.json { render :show, status: :ok, location: @improductive_reason }
      else
        format.html { render :edit }
        format.json { render json: @improductive_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /improductive_reasons/1
  # DELETE /improductive_reasons/1.json
  def destroy
    @improductive_reason.destroy
    respond_to do |format|
      format.html { redirect_to improductive_reasons_url, notice: 'Improductive reason was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_improductive_reason
      @improductive_reason = ImproductiveReason.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def improductive_reason_params
      params.require(:improductive_reason).permit(:name, :description)
    end
end
