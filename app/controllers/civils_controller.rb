class CivilsController < ApplicationController
  before_action :set_civil, only: [:show, :edit, :update, :destroy]

  # GET /civils
  # GET /civils.json
  def index
    @civils = Civil.all
  end

  # GET /civils/1
  # GET /civils/1.json
  def show
  end

  # GET /civils/new
  def new
    @civil = Civil.new
  end

  # GET /civils/1/edit
  def edit
  end

  # POST /civils
  # POST /civils.json
  def create
    @civil = Civil.new(civil_params)

    respond_to do |format|
      if @civil.save
        format.html { redirect_to @civil, notice: 'Civil was successfully created.' }
        format.json { render :show, status: :created, location: @civil }
      else
        format.html { render :new }
        format.json { render json: @civil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /civils/1
  # PATCH/PUT /civils/1.json
  def update
    respond_to do |format|
      if @civil.update(civil_params)
        format.html { redirect_to @civil, notice: 'Civil was successfully updated.' }
        format.json { render :show, status: :ok, location: @civil }
      else
        format.html { render :edit }
        format.json { render json: @civil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civils/1
  # DELETE /civils/1.json
  def destroy
    @civil.destroy
    respond_to do |format|
      format.html { redirect_to civils_url, notice: 'Civil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_civil
      @civil = Civil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def civil_params
      params.require(:civil).permit(:civil)
    end
end
