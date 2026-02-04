import '../styles/formulario.css';
import {R_Menu} from '../Reusable_views/r_menu';
import {R_Encabezado} from '../Reusable_views/r_encabezado';


export function formulario(){
    return(
        <div className="formulario-container">
            <div>

                <R_Encabezado
                titulo ="Hola"
                descripcion="Hola"
                />

            </div>
                <R_Menu
                name="Formulario Envio/Recepción"
                descripcion="hola"
                imagen="https://marketplace.canva.com/EAGvJE5Yl5E/1/0/1131w/canva-cartel-anuncio-en-mantenimiento-ilustrativo-minimalista-HhWFzVmjL1E.jpg"
                />

                <R_Menu
                name = "Acta"
                descripcion="En esta se suben"
                imagen="https://marketplace.canva.com/EAGvJE5Yl5E/1/0/1131w/canva-cartel-anuncio-en-mantenimiento-ilustrativo-minimalista-HhWFzVmjL1E.jpg"
                />

                <R_Menu
                name = "Alarma Acta"
                descripcion="Esta notifica las actas que hacen falta por subirse"
                imagen="https://marketplace.canva.com/EAGvJE5Yl5E/1/0/1131w/canva-cartel-anuncio-en-mantenimiento-ilustrativo-minimalista-HhWFzVmjL1E.jpg"
                />

            <div>
                
            </div>
        </div>
    )
}

export default formulario;