class TablerosController < ApplicationController
  before_action :set_tablero, only: %i[ show edit update destroy ]

  # GET /tableros or /tableros.json
  def index
    @tableros = Tablero.all
  end

  # GET /tableros/1 or /tableros/1.json
  def show
  end

  # GET /tableros/new
  def new
    @tablero = Tablero.new
    @publicacions = Publicacion.all
  end

  # GET /tableros/1/edit
  def edit
    @publicacions = Publicacion.all
  end

  # POST /tableros or /tableros.json
  def create
    @tablero = Tablero.new(tablero_params)

    respond_to do |format|
      if @tablero.save
        format.html { redirect_to tablero_url(@tablero), notice: "Tablero was successfully created." }
        format.json { render :show, status: :created, location: @tablero }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tablero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tableros/1 or /tableros/1.json
  def update
    respond_to do |format|
      if @tablero.update(tablero_params)
        format.html { redirect_to tablero_url(@tablero), notice: "Tablero was successfully updated." }
        format.json { render :show, status: :ok, location: @tablero }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tablero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tableros/1 or /tableros/1.json
  def destroy
    @tablero.destroy

    respond_to do |format|
      format.html { redirect_to tableros_url, notice: "Tablero was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tablero
      @tablero = Tablero.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tablero_params
      params.require(:tablero).permit(:fecha, :publicacion_id, :usuario_id)
    end
end
