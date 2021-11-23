package db;
import java.sql.*;
import java.util.ArrayList;
import web.Task;
import web.JavaDbListener;

public class Tasks {
    
    
    public static ArrayList<String> getTasks(String user) throws Exception{
        ArrayList<String> list = new ArrayList();
        Connection con = JavaDbListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM java_tasks WHERE user = '" + user + "'");
        System.out.println("rs");
        while(rs.next()){
            list.add(new Task(
                rs.getString("title"),
                rs.getInt("id"),
                rs.getString("user")
            ));
        }
        
        stmt.close();
        rs.close();
        con.close();
        
        return list;
    }
    
    public static void addTask(String taskName, String user) throws Exception {
        ArrayList<String> list = new ArrayList();
        Connection con = JavaDbListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("insert into java_tasks (id, title, user) values(null, '" + taskName + "','" + user + "')'");
    }
    
    public static void removeTask(Integer id) throws Exception {
        ArrayList<String> list = new ArrayList();
        Connection con = JavaDbListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("delete from tasks where id = "+ id + "");
    }
    
}