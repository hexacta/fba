class HorarioEntregasController < ApplicationController
  before_action :set_horario_entrega, only: [:show, :edit, :update, :destroy]

  # GET /horario_entregas
  # GET /horario_entregas.json
  def index
    @horario_entregas = HorarioEntrega.all
  end

  # GET /horario_entregas/1
  # GET /horario_entregas/1.json
  def show
  end

  # GET /horario_entregas/new
  def new
    @horario_entrega = HorarioEntrega.new
  end

  # GET /horario_entregas/1/edit
  def edit
  end

  # POST /horario_entregas
  # POST /horario_entregas.json
  def create
    @horario_entrega = HorarioEntrega.new(horario_entrega_params)

    respond_to do |format|
      if @horario_entrega.save
        format.html { redirect_to @horario_entrega, notice: 'Horario entrega was successfully created.' }
        format.json { render action: 'show', status: :created, location: @horario_entrega }
      else
        format.html { render action: 'new' }
        format.json { render json: @horario_entrega.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horario_entregas/1
  # PATCH/PUT /horario_entregas/1.json
  def update
    respond_to do |format|
      if @horario_entrega.update(horario_entrega_params)
        format.html { redirect_to @horario_entrega, notice: 'Horario entrega was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @horario_entrega.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horario_entregas/1
  # DELETE /horario_entregas/1.json
  def destroy
    @horario_entrega.destroy
    respond_to do |format|
      format.html { redirect_to horario_entregas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horario_entrega
      @horario_entrega = HorarioEntrega.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def horario_entrega_params
      params.require(:horario_entrega).permit(:horario)
    end
end
