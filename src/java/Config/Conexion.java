
package Config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author Pablo
 */
public class Conexion {
    public DriverManagerDataSource Conectar(){
    DriverManagerDataSource dataSource=new DriverManagerDataSource();
    dataSource.setDriverClassName("com.mysql.jdbc.Driver");
    dataSource.setUrl("jdbc:mysql://localhost:3306/inventario_libros");
    dataSource.setUsername("root");
    dataSource.setPassword("mysql");
        return dataSource;
}
    
}
