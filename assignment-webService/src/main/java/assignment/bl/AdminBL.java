/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import assignment.src.City;
import assignment.src.DBUtil;
import java.util.List;

/**
 *
 * @author thilan
 */
public class AdminBL {
    private DBUtil util;

    public AdminBL(DBUtil util) {
        this.util = util;
    }
    
    public boolean addCity(String name) {
        City city = new City(0, name);
        return this.util.addCity(city);
    }
    
    public List<City> getCities() {
        return this.util.getCities();
    }
    
    public boolean deleteCity(int id) {
        return this.util.deleteCity(id);
    }
    
    public City getCityById(int id) {
        return this.util.getCityById(id);
    }
    
    public boolean updateCity(String name, int id) {
        City city = new City(id, name);
        return this.util.updateCity(city);
    }
}
