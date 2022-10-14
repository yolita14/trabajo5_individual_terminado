class EtiquetaController < ApplicationController
  before_action :set_etiquetum, only: %i[ show edit update destroy ]

  # GET /etiqueta or /etiqueta.json
  def index
    @etiqueta = Etiquetum.all
    @publicacions = Publicacion.all
  end

  # GET /etiqueta/1 or /etiqueta/1.json
  def show
  end

  # GET /etiqueta/new
  def new
    @etiquetum = Etiquetum.new
    @publicacions = Publicacion.all
  end

  # GET /etiqueta/1/edit
  def edit
    @publicacions = Publicacion.all
  end

  # POST /etiqueta or /etiqueta.json
  def create
    @etiquetum = Etiquetum.new(etiquetum_params)

    respond_to do |format|
      if @etiquetum.save
        format.html { redirect_to etiquetum_url(@etiquetum), notice: "Etiquetum was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etiqueta/1 or /etiqueta/1.json
  def update
    respond_to do |format|
      if @etiquetum.update(etiquetum_params)
        format.html { redirect_to etiquetum_url(@etiquetum), notice: "Etiquetum was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etiqueta/1 or /etiqueta/1.json
  def destroy
    @etiquetum.destroy

    respond_to do |format|
      format.html { redirect_to etiqueta_url, notice: "Etiquetum was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etiquetum
      @etiquetum = Etiquetum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def etiquetum_params
      params.require(:etiquetum).permit(:nombre, publicacion_ids: [])
    end
end
