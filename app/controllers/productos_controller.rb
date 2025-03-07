class ProductosController < ApplicationController
  before_action :set_producto, only: %i[show edit update destroy]

  # GET /productos or /productos.json
  def index
    @productos = Producto.all
  end

  # GET /productos/1 or /productos/1.json
  def show
  end

  # GET /productos/new
  def new
    @producto = Producto.new
  end

  # GET /productos/1/edit
  def edit
    # @producto ya está definido por before_action :set_producto
  end

  # POST /productos or /productos.json
  def create
    @producto = Producto.new(producto_params)

    if @producto.save
      redirect_to @producto, notice: "Producto fue creado con éxito."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /productos/1 or /productos/1.json
  def update
    if @producto.update(producto_params)
      redirect_to @producto, notice: "Producto fue actualizado con éxito."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /productos/1 or /productos/1.json
  def destroy
    @producto.destroy!
    redirect_to productos_path, notice: "Producto fue eliminado con éxito.", status: :see_other
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_producto
    @producto = Producto.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def producto_params
    params.require(:producto).permit(:nombre, :descripcion, :precio, :stock)
  end
end
