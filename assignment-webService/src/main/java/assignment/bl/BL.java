/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import assignment.src.Customer;
import assignment.src.DBUtil;
import assignment.src.User;
import java.util.List;


/**
 *
 * @author thilan
 */
public class BL {
    private DBUtil util;

    public BL(DBUtil util) {
        this.util = util;
    }
    
    public boolean addUser(String firstName, String lastName, String email, String password, String mobile, int type) {
        User user = new User(password, type, 0, firstName, lastName, email, mobile);
        return this.util.addUser(user);
    }
    
    public List<Customer> getCustomers(){
        return this.util.getCustomers();
    }
    
    public boolean authUser(String mobile,String password) {
        return this.util.authUser(mobile, password);
    }
    
    public User getUserByMobile(String mobile) {
        return this.util.getUserByMobile(mobile);
    }
}
