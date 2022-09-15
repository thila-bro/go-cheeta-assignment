/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package assignment;

import assignment.bl.DriverBL;
import assignment.src.Booking;
import assignment.src.Driver;
import java.util.List;
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
    
    @WebMethod(operationName = "getDriverByEmail")
    public Driver getDriverByEmail(@WebParam(name = "email") String email) {
        return this.driverBL.getDriverByEmail(email);
    }
    
    @WebMethod(operationName = "getDriverBookings")
    public List<Booking> getDriverBookings(@WebParam(name = "driverId") int driverId) {
        return this.driverBL.getDriverBookings(driverId);
    }
    
    @WebMethod(operationName = "driverBookingAccept")
    public boolean driverBookingAccept(@WebParam(name = "bookingId") int bookingId) {
        return this.driverBL.driverBookingAccept(bookingId);
    }
    
    @WebMethod(operationName = "driverBookingComplete")
    public boolean driverBookingComplete(@WebParam(name = "bookingId") int bookingId) {
        return this.driverBL.driverBookingComplete(bookingId);
    }
    
    @WebMethod(operationName = "getDriverById")
    public Driver getDriverById(@WebParam(name = "driverId") int driverId) {
        return this.driverBL.getDriverById(driverId);
    }
    
    @WebMethod(operationName = "updateDriverProfile")
    public boolean updateDriverProfile(@WebParam(name = "driverId") int driverId, @WebParam(name = "firstName") String firstName, @WebParam(name = "lastName") String lastName, @WebParam(name = "mobile") String mobile, @WebParam(name = "licence") String licence, @WebParam(name = "nic") String nic, @WebParam(name = "password") String password) {
        return this.driverBL.updateDriverProfile(driverId, firstName, lastName, mobile, licence, nic, password);
    }
    
    @WebMethod(operationName = "getOrdersCountByDriverId")
    public int getOrdersCountByDriverId(@WebParam(name = "driverId") int driverId) {
        return this.driverBL.getOrdersCountByDriverId(driverId);
    }
    
    @WebMethod(operationName = "getRevenueByDriverId")
    public double getRevenueByDriverId(@WebParam(name = "driverId") int driverId) {
        return this.driverBL.getRevenueByDriverId(driverId);
    }
}
