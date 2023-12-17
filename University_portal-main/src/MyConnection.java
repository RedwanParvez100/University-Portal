import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {
    private static final String username="root";
    private static final String password="";
    private static final String dataConn="jdbc:mysql://localhost:3306/university_portal";
    public static Connection getConnection()
    {
        
        Connection con=null;
        try
        {
          Class.forName("com.mysql.cj.jdbc.Driver");
          con = DriverManager.getConnection(dataConn,username,password);
          
        }catch (Exception ex)
        {
            System.out.println(ex.getMessage());
        }
        return con;
    }
}