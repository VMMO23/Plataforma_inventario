import '../styles/menu.css'
import {R_Menu} from '../Reusable_views/r_menu'

export function Menu(){
    return(

        <article className="Menu">
            <div className="Menu-Div">
                <h2 className="Menu-Header">Menú</h2>
                <p className="Menu-Parrafo">Bienvenido Nombre_Empleado al menú de la plataforma de inventario</p>
            </div>
            
            <div className="Menu-Reusable">
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
            </div> 
        </article>
    
    )
    
}

export default Menu;