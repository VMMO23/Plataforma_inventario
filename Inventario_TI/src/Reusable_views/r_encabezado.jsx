import '../Reusable_styles/r_encabezado.css';

export function R_Encabezado({titulo, descripcion}){
    
    return(
        <section className="Encabezado-Section">
            <h2 className="Encabezado-Header">{titulo}</h2>
            <p className="Encabezado-Description">{descripcion}</p>
        </section>
    )
}
