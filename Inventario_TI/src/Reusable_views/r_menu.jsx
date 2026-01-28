import "../Reusable_styles/r_menu.css"

export function R_Menu ({ name, descripcion, imagen}){

    return(
                <article className="R-Menu" >
                    <header className="R-Menu-Header">
                        <img  className="R-Menu-Img" src={imagen} alt=""/>
                        <div className="R-Menu-info">
                            <p className="R-Menu-Titulo">{name}</p>
                            <p className="R-Menu-Descripcion">{descripcion}</p>

                            <button className="R-Menu-Button">
                            Ingresar
                            </button>
                        </div>
                    </header>
                </article>
    )
}


