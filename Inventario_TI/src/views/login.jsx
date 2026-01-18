import '../styles/Login.css';

export function Login(){
    return(
        <section>

            <h2>Iniciar Sesión</h2>

            <form action="">
                <label htmlFor="usuario">Correo Electronico o Usuario:</label>
                <input type="text" name="usuario" placeholder="Correo Electronico o Usuario"/>

                <label htmlFor="contraseña">Contraseña:</label>
                <input type="password" name="contraseña" placeholder='Contraseña' />

                <button action="send"> Iniciar Sesión</button>

            </form>

            
            <a href='https://www.google.com/'>¿Has olvidado tu contraseña?</a>
        </section>
    )
}

export default Login;