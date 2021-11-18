/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistemadeagenda;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 *
 * @author Seba-PC
 */
public class Conexion {
    
    static final String JDBC_DRIVER = "org.postgresql.Driver";
   static final String DB_URL = "jdbc:postgresql://localhost:5432/databasetpfinal";
   //static final String DB_URL = "jdbc:mysql://localhost:3306/sales_system";
   // static final String JDBC_DRIVER ="com.mysql.jdbc.Driver";
   //  Database credentials

   
   private static Connection conn = null;



   public static Connection obtenerConexion() throws SQLException, ClassNotFoundException {
      if (conn == null) {
         try {
            //Set Values from  .env configuration file
            // Properties enviromentsVariables = Conexion.getProperties();
            final String USER_DB = "postgres";
            final String PASS_DB = "4259853.0";
            final String DB_NAME = "databasetpfinal";

            // Set Driver to Database
            Class.forName(JDBC_DRIVER);
             //STEP 3: Open a connection
            conn = DriverManager.getConnection(DB_URL, USER_DB, PASS_DB);
         } catch (SQLException ex) {
            System.out.println("fallo intentando ingresar credenciales");
         } catch (ClassNotFoundException ex) {
            System.out.println("fallo intentando ingresar segunndo");
             throw new ClassCastException(ex.getMessage());
         } catch (Exception e) {
             System.out.println("fallo intentando ingresar tercero");
            e.printStackTrace();
         }
      }
      return conn;
   }
   
   public static void cerrar() throws SQLException {
      if (conn != null) {
         conn.close();
      }
   }

   public static Properties  getProperties() throws Exception {
      FileReader reader=new FileReader(".env");
      Properties p = new Properties();
      p.load(reader);
      return p;
   }
    
}
