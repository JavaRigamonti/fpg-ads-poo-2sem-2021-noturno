/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import java.sql.*;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import static sun.tools.jconsole.Messages.CLASS_NAME;

/**
 * Web application lifecycle listener.
 *
 * @author T-Gamer
 */
public class JavaDbListener implements ServletContextListener {
public static final String URL = "jdbc:sqlite:tasks.db";
    
    public static Exception exception = null;
    
    public static Connection getConnection() throws Exception{
        return DriverManager.getConnection(URL);
    }
    
    
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try{
            Class.forName(CLASS_NAME);
            Connection con = getConnection();
            Statement stmt = con.createStatement();
            stmt.execute("CREATE TABLE IF NOT EXISTS java_tasks("
                    + "id integer primary key not null,"
                    + "title varchar not null,"
                    + "user varchar not null"
                    + ")");
            stmt.close();
            con.close();
        }catch(Exception ex){
            exception = ex;
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
