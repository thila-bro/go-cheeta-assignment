/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.db;

import assignment.src.City;
import assignment.src.Customer;
import assignment.src.DBUtil;
import assignment.src.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author thilan
 */
public class MySQLUtil implements DBUtil {
    private Connection con;
    private Statement stmt;
    private ResultSet rs;

    public MySQLUtil() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.con = DriverManager.getConnection("jdbc:mysql://localhost/assignment-db?allowPublicKeyRetrieval=true&useSSL=false&user=root&password=password");
        } catch(ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    
    @Override
    public List<Customer> getCustomers() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_customers`();");

            List<Customer> customers = new ArrayList<>();

            while (rs.next()) {
                Customer customer = new Customer(rs.getString("mobile"), rs.getString("password"), rs.getInt("id"), rs.getString("firstName"), rs.getString("lastName"), rs.getString("email"));
                customers.add(customer);
            }
            
            return customers;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean addUser(User user) {
        try {

            this.stmt  = this.con.prepareCall("CALL `add_user`('"+user.getFirstName()+"','"+user.getLastName()+"','"+user.getPassword()+"','"+user.getEmail()+"','"+user.getMobile()+"');");            
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e);
            return false;
        }
    }
    
    @Override
    public User getUserByMobile(String mobile) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_user_by_mobile`('"+mobile+"');");
            
            if(rs.next()) {
                User user = new User(rs.getString("password"), rs.getInt("type"), rs.getInt("id"), rs.getString("firstName"), rs.getString("lastName"), rs.getString("email"), rs.getString("mobile"));
                return user;
            } else {
                return null;
            }
            
            
        } catch(SQLException e) {
            System.out.print(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean authUser(String mobile, String password) {
        try {
            this.stmt = this.con.createStatement();
            this.rs   = this.stmt.executeQuery("CALL `assignment-db`.`auth_user`('"+mobile+"', '"+password+"');");
            
            return rs.next();
        } catch(SQLException e) {
            System.err.println(e.getMessage());
            return false;
        }
    }
    
    
    
   
    
    // admin area  
    @Override
    public boolean addCity(City city) {
        try {
            this.stmt  = this.con.prepareCall("CALL `add_city`('"+city.getName()+"');");            
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public List<City> getCities() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_cities`();");

            List<City> cities = new ArrayList<>();

            while (rs.next()) {
                City city = new City(rs.getInt("id"), rs.getString("city"));
                cities.add(city);
            }
            
            return cities;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean deleteCity(int id) {
        try {
            this.stmt  = this.con.prepareCall("CALL `delete_city`('"+id+"');");            
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
        
    @Override
    public City getCityById(int id) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_city_by_id`('"+id+"');");
        
            if(rs.next()) {
                City city = new City(rs.getInt("id"), rs.getString("city"));
                return city;
            } else {
                return null;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean updateCity(City city) {
        try {
            this.stmt  = this.con.prepareCall("CALL `update_city`('"+city.getId()+"','"+city.getName()+"');");            
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
}
