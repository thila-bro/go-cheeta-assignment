/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package assignment;

import assignment.bl.CustomerBL;
import assignment.db.MySQLUtil;
import assignment.src.DBUtil;
import assignment.src.Driver;
import assignment.src.SelectedVehicle;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author thilan
 */
@WebService(serviceName = "CustomerWebService")
public class CustomerWebService {
    private final DBUtil util = new MySQLUtil();
    private final CustomerBL customerBL = new CustomerBL(util);
    
    @WebMethod(operationName = "authCustomer")
    public boolean authCustomer(@WebParam(name = "mobile") String mobile, @WebParam(name = "password") String password) {
        return this.customerBL.authCustomer(mobile, password);
    }    
    
    @WebMethod(operationName = "getDriversByTypeIdAndSouceCity")
    public List<SelectedVehicle> getDriversByTypeIdAndSouceCity(@WebParam(name = "typeId") int typeId,@WebParam(name = "cityId") int cityId) {
        return this.customerBL.getDriversByTypeIdAndSouceCity(typeId, cityId);
    }
}
