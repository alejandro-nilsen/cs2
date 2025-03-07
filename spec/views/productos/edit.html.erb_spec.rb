require 'rails_helper'

RSpec.describe "productos/edit", type: :feature do
  let!(:producto) { Producto.create(nombre: "Sartén", descripcion: "Sartén de acero inoxidable", precio: 45.99, stock: 10) }

  before do
    visit edit_producto_path(producto)
  end

  context "1. Validar que la página de edición cargue correctamente" do
    it "muestra la página de edición del producto" do
      expect(page).to have_current_path(edit_producto_path(producto))
    end
  end

  context "2. Validar que la página muestre el título 'Product Edition' con el formato h2" do
    it "muestra el título en formato h2" do
      expect(page).to have_selector("h2", text: "Product Edition")
    end
  end

  context "3. Validar que se muestre el mensaje 'Product no registered' cuando el producto no exista" do
    it "muestra el mensaje cuando el producto no existe" do
      visit edit_producto_path(999) # ID inexistente
      expect(page).to have_content("Product no registered")
    end
  end

  context "4. Validar que se inhabilite el botón para guardar si algún campo está en blanco" do
    it "deshabilita el botón si hay campos vacíos" do
      fill_in "Nombre", with: ""
      fill_in "Descripción", with: ""
      fill_in "Precio", with: ""
      fill_in "Stock", with: ""
      
      expect(page).to have_button("Guardar", disabled: true)
    end
  end
end
