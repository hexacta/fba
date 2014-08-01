class DonantesController < ApplicationController
  before_action :set_donante, only: [:show, :edit, :update, :destroy]

  # GET /donantes
  # GET /donantes.json
  def index
    @donantes = Donante.all
  end

  # GET /donantes/1
  # GET /donantes/1.json
  def show
  end

  # GET /donantes/new
  def new
    @donante = Donante.new
  end

  # GET /donantes/1/edit
  def edit
  end

  # POST /donantes
  # POST /donantes.json
  def create
    @donante = Donante.new(donante_params)

    respond_to do |format|
      if @donante.save
        format.html { redirect_to @donante, notice: 'Donante was successfully created.' }
        format.json { render action: 'show', status: :created, location: @donante }
      else
        format.html { render action: 'new' }
        format.json { render json: @donante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donantes/1
  # PATCH/PUT /donantes/1.json
  def update
    respond_to do |format|
      if @donante.update(donante_params)
        format.html { redirect_to @donante, notice: 'Donante was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @donante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donantes/1
  # DELETE /donantes/1.json
  def destroy
    @donante.destroy
    respond_to do |format|
      format.html { redirect_to donantes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donante
      @donante = Donante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donante_params
      params.require(:donante).permit(:codigo, :donante, :telefono, :email, :nombre_contacto)
    end
end
