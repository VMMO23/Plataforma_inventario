import '../styles/Navbar.css';

export function Navbar(){

    return(
        <div className="Navbar">
            {/* Para la barra de navegación deseo los siguientes atributos:
            
            Logo pagafacil, Home (Menu), About us, Alarms, Profile, Settings, Log out*/}
            <ul>
                <li>Home</li> 
                <li> About us</li>
                <li>Alarms</li>
                <li>Profile</li>
                <li>Settings</li>
            </ul>
        </div>
    )
}

export default Navbar;