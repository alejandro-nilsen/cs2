document.addEventListener("DOMContentLoaded", function() {
    function toggleSubmitButton() {
        let nombre = document.querySelector("#producto_nombre").value.trim();
        let descripcion = document.querySelector("#producto_descripcion").value.trim();
        let precio = document.querySelector("#producto_precio").value.trim();
        let stock = document.querySelector("#producto_stock").value.trim();
        let botonGuardar = document.querySelector("input[type='submit']");

        if (botonGuardar) {
            botonGuardar.disabled = !(nombre && descripcion && precio && stock);
        }
    }

    document.querySelectorAll("input, textarea").forEach(field => {
        field.addEventListener("input", toggleSubmitButton);
    });

    toggleSubmitButton();
});
