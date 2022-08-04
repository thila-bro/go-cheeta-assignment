/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package assignment;

import assignment.bl.AdminBL;
import assignment.db.MySQLUtil;
import assignment.src.City;
import assignment.src.DBUtil;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author thilan
 */
@WebService(serviceName = "AdminWebService")
public class AdminWebService {
    private DBUtil util = new MySQLUtil();
    private AdminBL adminBL = new AdminBL(util);

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
    @WebMethod(operationName = "addCity")
    public boolean addCity(@WebParam(name = "name") String name) {
        return this.adminBL.addCity(name);
    }
    
    @WebMethod(operationName = "getCities")
    public List<City> getCities() {
        return this.adminBL.getCities();
    }
    
    @WebMethod(operationName = "deleteCity")
    public boolean deleteCity(@WebParam(name = "id") int id) {
        return this.adminBL.deleteCity(id);
    }
    
    @WebMethod(operationName = "getCityById")
    public City getCityById(@WebParam(name = "id") int id) {
        return this.adminBL.getCityById(id);
    }
    
    @WebMethod(operationName = "updateCity")
    public boolean updateCity(@WebParam(name = "name") String name,@WebParam(name = "id") int id) {
        return this.adminBL.updateCity(name, id);
    }
}
