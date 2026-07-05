import '../styles/Navbar.css';

export function Navbar(){

    return(
        <div className="navbar-container">
            {/* Para la barra de navegación deseo los siguientes atributos:
            
            Logo pagafacil, Home (Menu), About us, Alarms, Profile, Settings, Log out*/}
            <ul className="navbar-ul">
                <li className='navbar-li'>Home</li> 
                <li className='navbar-li'>About us</li>
                <li className='navbar-li'>Alarms</li>{/* Poner mejor un icono y mirar como poner el valor cuando hay algo pendiente y numero de novedades*/}
                <li className='navbar-li'>Profile</li>
                <li className='navbar-li'>Settings</li>
            </ul>
        </div>
    )
}

export default Navbar;