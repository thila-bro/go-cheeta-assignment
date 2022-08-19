/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package assignment;


import assignment.bl.BL;
import assignment.bl.SendEmail;
import assignment.db.MySQLUtil;
import assignment.src.Customer;
import assignment.src.DBUtil;
import assignment.src.User;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author thilan
 */
@WebService(serviceName = "AssignmentDBService")
public class AssignmentDBService {
    private SendEmail sendMail = new SendEmail();
    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
    public List<Customer> testFunction() {
        DBUtil util = new MySQLUtil();
        BL bl = new BL(util);
        return bl.getCustomers();
    }
        
    @WebMethod(operationName = "addUser")
    public boolean addUser(@WebParam(name = "firstName") String firstName,@WebParam(name = "lastName") String lastName,@WebParam(name = "email") String email,@WebParam(name = "password") String password,@WebParam(name = "mobile") String mobile,@WebParam(name = "type") int type) {
        DBUtil util = new MySQLUtil();
        BL bl = new BL(util);
        return bl.addUser(firstName, lastName, email, password, mobile, type);
    }
    
    @WebMethod(operationName = "getUserByMobile")
    public User getUserByMobile(@WebParam(name = "mobile") String mobile) {
        DBUtil util = new MySQLUtil();
        BL bl = new BL(util);
        return bl.getUserByMobile(mobile);
    }
    
    @WebMethod(operationName = "authUser")
    public boolean authUser(@WebParam(name = "mobile") String mobile, @WebParam(name = "password") String password) {
        DBUtil util = new MySQLUtil();
        BL bl = new BL(util);
        return bl.authUser(mobile, password);
    }
}
