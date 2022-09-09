/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import assignment.db.MySQLUtil;
import assignment.src.Customer;
import assignment.src.DBUtil;
import assignment.src.User;
import java.util.List;


/**
 *
 * @author thilan
 */
public class BL {
    private static final BL instance = new BL();
    private DBUtil util = MySQLUtil.getInstance();

//    public BL(DBUtil util) {
//        this.util = util;
//    }
    
    public static BL getInstance() {
        return instance;
    }
    
    public boolean addUser(String firstName, String lastName, String email, String password, String mobile, int type) {
        User user = new User(password, type, 0, firstName, lastName, email, mobile);
        return this.util.addUser(user);
    }
    
    public List<Customer> getCustomers(){
        return this.util.getCustomers();
    }
    
    public User getUserByMobile(String mobile) {
        return this.util.getUserByMobile(mobile);
    }
}
