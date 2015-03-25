/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author DELL
 */
public class UserManager {

    
    public boolean checkUser(String user, String pass) {
        boolean status = false;

        try {
            //Tao connection
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String dbUser = "sa";
            String dbPassword = "123456";
            String url = "jdbc:sqlserver://DELL-PC\\SQLEXPRESS:1433;databaseName=ProductManager";
            Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
            PreparedStatement ps = conn.prepareStatement("Select * from [User] where username = ? and password = ?");
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            status = rs.next();            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}
