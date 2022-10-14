class PublicacionsController < ApplicationController
  before_action :set_publicacion, only: %i[ show edit update destroy ]

  # GET /publicacions or /publicacions.json
  def index
    @publicacions = Publicacion.all
  end

  # GET /publicacions/1 or /publicacions/1.json
  def show
  end

  # GET /publicacions/new
  def new
    @publicacion = Publicacion.new
    @etiqueta = Etiquetum.all
  end

  # GET /publicacions/1/edit
  def edit
      @etiqueta = Etiquetum.all
  end

  # POST /publicacions or /publicacions.json
  def create
    @publicacion = Publicacion.new(publicacion_params)

    respond_to do |format|
      if @publicacion.save
        format.html { redirect_to publicacion_url(@publicacion), notice: "Publicacion was successfully created." }
        format.json { render :show, status: :created, location: @publicacion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @publicacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publicacions/1 or /publicacions/1.json
  def update
    respond_to do |format|
      if @publicacion.update(publicacion_params)
        format.html { redirect_to publicacion_url(@publicacion), notice: "Publicacion was successfully updated." }
        format.json { render :show, status: :ok, location: @publicacion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @publicacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publicacions/1 or /publicacions/1.json
  def destroy
    @publicacion.destroy

    respond_to do |format|
      format.html { redirect_to publicacions_url, notice: "Publicacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publicacion
      @publicacion = Publicacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def publicacion_params
      params.require(:publicacion).permit(:titulo, :usuario_id, :foto, etiquetum_ids: [])
    end
end
