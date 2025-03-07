document.addEventListener("DOMContentLoaded", function() {
    console.log("productos.js está cargado");

    function toggleSubmitButton() {
        let nombre = document.querySelector("#producto_nombre")?.value.trim();
        let descripcion = document.querySelector("#producto_descripcion")?.value.trim();
        let precio = document.querySelector("#producto_precio")?.value.trim();
        let stock = document.querySelector("#producto_stock")?.value.trim();
        let botonGuardar = document.querySelector("#boton_guardar");

        console.log(`Valores: Nombre=${nombre}, Descripción=${descripcion}, Precio=${precio}, Stock=${stock}`);

        if (botonGuardar) {
            botonGuardar.disabled = !(nombre && descripcion && precio && stock);
            console.log(`Botón Guardar habilitado: ${!botonGuardar.disabled}`);
        } else {
            console.log("Botón Guardar no encontrado");
        }
    }

    document.querySelectorAll("input, textarea").forEach(field => {
        field.addEventListener("input", toggleSubmitButton);
    });

    toggleSubmitButton();
});
