package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Vuong Van Truong
 */
public class DBContext {
    public Connection getConnection(){
        Connection conn = null;
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
        try {
              Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null,ex);
        }
        try {
            conn = DriverManager.getConnection(url, userID,password);
        } catch (SQLException ex) {
              Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null,ex);
        }
        return conn;
        }         
    private final String serverName = "localhost";
    private final String dbName = "NewDigital";
    private final String portNumber = "1433";
    private final String userID = "sa";
    private final String password = "truong";
    public static void main(String[] args) {
        System.out.println(new DBContext().getConnection());
    }
}
