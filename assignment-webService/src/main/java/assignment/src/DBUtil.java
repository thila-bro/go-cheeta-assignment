/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.src;
import java.util.List;

/**
 *
 * @author thilan
 */
public interface DBUtil {
   public List<Customer> getCustomers();
   public boolean addUser(User customer);
   public User getUserByMobile(String mobile);
   public boolean authUser(String mobile, String password);
   
   
   // admin area 
   public boolean addCity(City city);
   public List<City> getCities();
   public boolean deleteCity(int id);
   public City getCityById(int id);
   public boolean updateCity(City city);
}
