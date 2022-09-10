/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import assignment.db.MySQLUtil;
import assignment.src.Booking;
import assignment.src.DBUtil;
import assignment.src.Driver;
import java.util.List;

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

    public Driver getDriverByEmail(String email) {
        return this.util.getDriverByEmail(email);
    }

    public List<Booking> getDriverBookings(int driverId) {
        return this.util.getDriverBookings(driverId);
    }

    public boolean driverBookingAccept(int bookingId) {
        return this.util.driverBookingAccept(bookingId);
    }

    public boolean driverBookingComplete(int bookingId) {
        return  this.util.driverBookingComplete(bookingId);
    }
       
    
}
