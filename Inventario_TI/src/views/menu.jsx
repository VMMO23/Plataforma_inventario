import '../styles/menu.css'
import {R_Menu} from '../Reusable_views/r_menu'

export function Menu(){
    return(

        <R_Menu 
            name="Inventario" 
            descripcion="Este permite registrar los productos que se envian o reciben para conocer con exactitud la cantidad de elementos con la que contamos dentro y fuera de la oficina." 
            imagen="https://www.xamai.com/hubfs/Miniaturas%20junio%20(2)-3.webp"
        />
    )
    
}

export default Menu;