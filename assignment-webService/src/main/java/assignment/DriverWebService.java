/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package assignment;

import assignment.bl.DriverBL;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author thilan
 */
@WebService(serviceName = "DriverWebService")
public class DriverWebService {
    private final DriverBL driverBL = new DriverBL();
    
    /**
     * @param email
     * @param password
     * @return 
     */
    @WebMethod(operationName = "authDriver")
    public boolean authDriver(@WebParam(name = "email") String email, @WebParam(name = "password") String password) {
        return this.driverBL.authDriver(email, password);
    }
}
