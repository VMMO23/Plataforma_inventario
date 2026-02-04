import '../styles/Login.css';
import logo from '../assets/L.png';

export function Login() {
  return (
    <section className="login-container">
      <div className="login-wrapper">

        {/* IZQUIERDA: logo y nombre */}
        <div className="login-left">
          <img src={logo} alt="Logo empresa" className="login-logo-side" />
        </div>

        {/* DERECHA: formulario */}
        <div className="login-right">
          <div className="login-card">
            <h2>Iniciar Sesión</h2>

            <form>
              <div className="form-group">
                <label htmlFor="usuario">Correo electrónico o usuario</label>
                <input
                  type="text"
                  id="usuario"
                  name="usuario"
                  placeholder="Ingresar usuario o correo"
                />
              </div>

              <div className="form-group">
                <label htmlFor="contraseña">Contraseña</label>
                <input
                  type="password"
                  id="contraseña"
                  name="contraseña"
                  placeholder="Ingresar contraseña"
                />
              </div>

              <button on-click="" type="submit" className="login-btn">
                Iniciar Sesión
              </button>
            </form>

            <a href="#" className="forgot-password">
              ¿Has olvidado tu contraseña?
            </a>
          </div>
        </div>

      </div>
    </section>
  );
}

export default Login;
