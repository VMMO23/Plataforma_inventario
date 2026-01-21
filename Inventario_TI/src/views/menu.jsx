import '../styles/menu.css'
import {R_Menu} from '../Reusable_views/r_menu'

export function Menu(){
    return(

        <article>
            <div>
                <h2>Menú</h2>
                <p>Bienvenido Nombre_Empleado al menú de la plataforma de inventario</p>
            </div>
            
            
            <R_Menu 
                name="Inventario" 
                descripcion="Este permite registrar los productos que se envian o reciben para conocer con exactitud la cantidad de elementos con la que contamos dentro y fuera de la oficina." 
                imagen="https://www.xamai.com/hubfs/Miniaturas%20junio%20(2)-3.webp"
            />

            <R_Menu 
                name="Seguimiento" 
                descripcion="Este permite llevar un seguimiento constante de lo que necesita cada zona, ya sea evidenciado por el equipo de TI o por los líderes de cada zona." 
                imagen="https://www.xamai.com/hubfs/Miniaturas%20junio%20(2)-3.webp"
            />

            <R_Menu 
                name="Seguimiento" 
                descripcion="Este permite llevar un seguimiento constante de lo que necesita cada zona, ya sea evidenciado por el equipo de TI o por los líderes de cada zona." 
                imagen="https://www.xamai.com/hubfs/Miniaturas%20junio%20(2)-3.webp"
            />
        </article>
    
    )
    
}

export default Menu;