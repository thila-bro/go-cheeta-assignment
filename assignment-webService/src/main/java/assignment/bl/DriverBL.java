/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import assignment.db.MySQLUtil;
import assignment.src.DBUtil;

/**
 *
 * @author thilan
 */
public class DriverBL {
    private static final DriverBL driverBL = new DriverBL();
    private final DBUtil util = MySQLUtil.getInstance();
    
    public static DriverBL getInstance() {
        return driverBL;
    }

    public boolean authDriver(String email, String password) {
        return this.util.authDriver(email, password);
    }
       
    
}
