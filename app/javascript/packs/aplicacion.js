import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";
import "../productos"; // Importa el script de productos

Rails.start();
Turbolinks.start();
ActiveStorage.start();
