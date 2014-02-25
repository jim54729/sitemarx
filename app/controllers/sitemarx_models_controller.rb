class SitemarxModelsController < ApplicationController
  before_action :set_sitemarx_model, only: [:show, :edit, :update, :destroy]

  # GET /sitemarx_models
  # GET /sitemarx_models.json
  def index
    @sitemarx_models = SitemarxModel.all
  end

  # GET /sitemarx_models/1
  # GET /sitemarx_models/1.json
  def show
  end

  # GET /sitemarx_models/new
  def new
    @sitemarx_model = SitemarxModel.new
  end

  # GET /sitemarx_models/1/edit
  def edit
  end

  # POST /sitemarx_models
  # POST /sitemarx_models.json
  def create
    @sitemarx_model = SitemarxModel.new(sitemarx_model_params)

    respond_to do |format|
      if @sitemarx_model.save
        format.html { redirect_to @sitemarx_model, notice: 'Sitemarx model was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sitemarx_model }
      else
        format.html { render action: 'new' }
        format.json { render json: @sitemarx_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sitemarx_models/1
  # PATCH/PUT /sitemarx_models/1.json
  def update
    respond_to do |format|
      if @sitemarx_model.update(sitemarx_model_params)
        format.html { redirect_to @sitemarx_model, notice: 'Sitemarx model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sitemarx_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sitemarx_models/1
  # DELETE /sitemarx_models/1.json
  def destroy
    @sitemarx_model.destroy
    respond_to do |format|
      format.html { redirect_to sitemarx_models_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sitemarx_model
      @sitemarx_model = SitemarxModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sitemarx_model_params
      params.require(:sitemarx_model).permit(:url, :name, :saved_at)
    end
end
