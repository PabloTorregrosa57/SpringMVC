package Controller;

import Config.Conexion;
import Entidad.Editorial;
import com.sun.net.httpserver.HttpServer;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView; // OJO es de servlet nò de portlet

@Controller
public class EditorialController {

    Conexion con = new Conexion(); //para empesar a listar los datos
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar()); //Instanciar el template con paràmetro con.Conectar
    ModelAndView mav = new ModelAndView();
    String codigo;
    List datos;

    @RequestMapping(value = "index.htm", method = RequestMethod.GET) // htm como quedò al crear el proyecto, puede cambiarse a .php o... 
    public ModelAndView Listar() {
        String sql = "SELECT * FROM editoriales";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);  // para enviar
        mav.setViewName("index");
        return mav; // pasar al index.jsp
    }

    @RequestMapping(value = "editorial/listar.htm", method = RequestMethod.GET) // htm como quedò al crear el proyecto, puede cambiarse a .php o... 
    public ModelAndView Listara() {
        String sql = "SELECT * FROM editoriales";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);  // para enviar
        mav.setViewName("editorial/listar");
        return mav; // pasar al index.jsp
    }

    @RequestMapping(value = "editorial/agregar", method = RequestMethod.GET)
    public ModelAndView Agregar() {
        mav.addObject(new Editorial());
        mav.setViewName("editorial/agregar");
        return mav;
    }

    @RequestMapping(value = "editorial/agregar", method = RequestMethod.POST)
    public ModelAndView Agregar(Editorial e) {
        String sql = "INSERT INTO editoriales(codigo_editorial, nombre_editorial, contacto, telefono) VALUE (?,?,?,?)";
        this.jdbcTemplate.update(sql, e.getCodigo(), e.getNombre(), e.getContacto(), e.getTelefono());
        return new ModelAndView("redirect:/index");
    }
    
    @RequestMapping(value = "editorial/editar", method = RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
        codigo = request.getParameter("codigo");
        String sql = "SELECT * FROM editoriales WHERE codigo_editorial = '" + codigo + "'";
        datos = this.jdbcTemplate.queryForList(sql);
        System.out.println("\n 1:Seleccionado y enviado:" + datos.toString());
        mav.addObject("lista", datos);
        mav.setViewName("editorial/editar");
        return mav;
    }
    
    @RequestMapping(value = "editorial/editar", method = RequestMethod.POST)
    public ModelAndView Editar(Editorial e){
//        System.out.println("Controller.EditorialController.Editar() CODIGO A EDITAR " + e.getCodigo()); // systrace [TAB]  // sout [TAB]
        
         String sql= "UPDATE editoriales SET nombre_editorial=?, contacto=?, telefono=? WHERE codigo_editorial = ?"; //'" + e.getCodigo() + "'";
         this.jdbcTemplate.update(sql, e.getNombre(),e.getContacto(),e.getTelefono(), codigo);

         return new ModelAndView("redirect:/index");
    }
    
    @RequestMapping("editorial/eliminar")
    public ModelAndView Eliminar(HttpServletRequest request){
        codigo = request.getParameter("codigo");
        String sql="DELETE FROM editoriales WHERE codigo_editorial = '" + codigo +"'";
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index");
    }
}
