/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package persistencia;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Usuario;
import persistencia.exceptions.NonexistentEntityException;
/**
 *
 * @author yahupc
 */
public class ControladoraPersistencia {
    UsuarioJpaController usuJpa = new UsuarioJpaController();
    
    // Operacion CREATE
    public void crearUsuario (Usuario usu){
        usuJpa.create(usu);
    }
    
    // Operacion READ
    public List<Usuario> traerUsuarios (){
        return usuJpa.findUsuarioEntities();
    }

    public void borrarUsuario(int id_eliminar) {
        try {
            usuJpa.destroy(id_eliminar);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
