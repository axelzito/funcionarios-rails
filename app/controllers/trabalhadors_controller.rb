class TrabalhadorsController < ApplicationController
  before_action :set_trabalhador, only: [:show, :edit, :update, :destroy]

  # GET /trabalhadors
  # GET /trabalhadors.json
  def index

    @trabalhadors = Trabalhador.all

    if params[:search]
      @trabalhadors = Trabalhador.search(params[:search])
    else
      #@trabalhadors = Trabalhador.all
    end

    if params[:search_sexo]
      @trabalhadors = Trabalhador.search_sexo(params[:search_sexo])
    else
      #@trabalhadors = Trabalhador.all
    end

    if params[:search_workspace]
      @trabalhadors = Trabalhador.search_workspace(params[:search_workspace])
    else
      #@trabalhadors = Trabalhador.all
    end

    if params[:search_job]
      @trabalhadors = Trabalhador.search_job(params[:search_job])
    else
      #@trabalhadors = Trabalhador.all
    end

  end


  # GET /trabalhadors/1
  # GET /trabalhadors/1.json
  def show
  end

  # GET /trabalhadors/new
  def new
    @trabalhador = Trabalhador.new
  end

  # GET /trabalhadors/1/edit
  def edit
  end

  # POST /trabalhadors
  # POST /trabalhadors.json
  def create
    @trabalhador = Trabalhador.new(trabalhador_params)

    respond_to do |format|
      if @trabalhador.save
        format.html { redirect_to @trabalhador, notice: 'Trabalhador was successfully created.' }
        format.json { render :show, status: :created, location: @trabalhador }
      else
        format.html { render :new }
        format.json { render json: @trabalhador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trabalhadors/1
  # PATCH/PUT /trabalhadors/1.json
  def update
    respond_to do |format|
      if @trabalhador.update(trabalhador_params)
        format.html { redirect_to @trabalhador, notice: 'Trabalhador was successfully updated.' }
        format.json { render :show, status: :ok, location: @trabalhador }
      else
        format.html { render :edit }
        format.json { render json: @trabalhador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trabalhadors/1
  # DELETE /trabalhadors/1.json
  def destroy
    @trabalhador.destroy
    respond_to do |format|
      format.html { redirect_to trabalhadors_url, notice: 'Trabalhador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trabalhador
      @trabalhador = Trabalhador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trabalhador_params
      params.require(:trabalhador).permit(:nome, :matricula, :nascimento, :sexo, :civil, :cidade, :estado, :workspace, :job_role)
    end
end
