package Entidad;

/**
 *
 * @author Pablo
 */
public class Editorial {

    private String codigo;
    private String nombre;
    private String contacto;
    private String telefono;

    public Editorial() {
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getContacto() {
        return contacto;
    }

    public void setContacto(String contacto) {
        this.contacto = contacto;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    @Override
    public String toString() {
        return "Editorial{" + "codigo=" + codigo + ", nombre=" + nombre + ", contacto=" + contacto + ", telefono=" + telefono + '}';
    }

}
