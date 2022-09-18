/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package assignment;

import assignment.bl.CustomerBL;
import assignment.bl.PriceCalculation;
import assignment.bl.SendEmail;
import assignment.db.MySQLUtil;
import assignment.src.Booking;
import assignment.src.Customer;
import assignment.src.DBUtil;
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
    private final DBUtil util = MySQLUtil.getInstance();
    private final CustomerBL customerBL = CustomerBL.getInstance();
    private final PriceCalculation priceCalculation = new PriceCalculation();
    private SendEmail sendMail = new SendEmail();
    
    @WebMethod(operationName = "sendBookingToDriver")
    public boolean sendBookingToDriver(int customerId) {
        return this.sendMail.sendBookingToDriver(customerId);
    }
    
    @WebMethod(operationName = "authCustomer")
    public boolean authCustomer(@WebParam(name = "mobile") String mobile, @WebParam(name = "password") String password) {
        return this.customerBL.authCustomer(mobile, password);
    }    
    
    @WebMethod(operationName = "getDriversByTypeIdAndSouceCity")
    public List<SelectedVehicle> getDriversByTypeIdAndSouceCity(@WebParam(name = "typeId") int typeId,@WebParam(name = "cityId") int cityId) {
        return this.customerBL.getDriversByTypeIdAndSouceCity(typeId, cityId);
    }
    
    @WebMethod(operationName = "vehiclePriceCalculation")
    public double vehiclePriceCalculation(@WebParam(name = "initialCost") double initialCost, @WebParam(name = "ratePerKm") double ratePerKm, @WebParam(name = "distance") double distance) {
        return this.priceCalculation.vehiclePriceCalculation(initialCost, ratePerKm, distance);
    }
    
    @WebMethod(operationName = "addBooking")
    public boolean addBooking(@WebParam(name = "customerId") int customerId, @WebParam(name = "vehicleId") int vehicleId, @WebParam(name = "vehicleType") int vehicleType, @WebParam(name = "pickUpCityId") int pickUpCityId, @WebParam(name = "dropOffCityId") int dropOffCityId, @WebParam(name = "pickUpStreet") String pickUpStreet, @WebParam(name = "dropOffStreet") String dropOffStreet, @WebParam(name = "price") double price, @WebParam(name = "distance") double  distance) {
        System.out.println("saving failed in customer webs services ");
        return this.customerBL.addBooking(customerId, vehicleId, vehicleType, pickUpCityId, dropOffCityId, pickUpStreet, dropOffStreet, price, distance);
    }
    
    @WebMethod(operationName = "getCustomersBookingsById")
    public List<Booking> getCustomersBookingsById(int customerId) {
        return this.customerBL.getCustomersBookingsById(customerId);
    }
    
    @WebMethod(operationName = "addCustomer")
    public boolean addCustomer(@WebParam(name = "mobile") String mobile, @WebParam(name = "fristName") String fristName, @WebParam(name = "lastName") String lastName, @WebParam(name = "email") String email, @WebParam(name = "password") String password) {
        return this.customerBL.addCustomer(mobile, fristName, lastName, email, password);
    }
    
    @WebMethod(operationName = "getCustomerByMobileAndPassword")
    public Customer getCustomerByMobileAndPassword(@WebParam(name = "mobile") String mobile, @WebParam(name = "pasword") String pasword) {
        return this.customerBL.getCustomerByMobileAndPassword(mobile, pasword);
    }
    
    @WebMethod(operationName = "addFeedback")
    public boolean addFeedback(@WebParam(name = "bookingId") int bookingId, @WebParam(name = "tripRate") int tripRate, @WebParam(name = "feedback") String feedback) {
        return this.customerBL.addFeedback(bookingId, tripRate, feedback);
    }
    
    @WebMethod(operationName = "getCustomerById")
    public Customer getCustomerById(@WebParam(name = "customerId") int customerId) {
        return this.customerBL.getCustomerById(customerId);
    }
    
    @WebMethod(operationName = "updateCustomerProfile")
    public boolean updateCustomerProfile(@WebParam(name = "customerId") int customerId, @WebParam(name = "firstName") String firstName, @WebParam(name = "lastName") String lastName, @WebParam(name = "email") String email, @WebParam(name = "passowrd") String passowrd) {
        return this.customerBL.updateCustomerProfile(customerId, firstName, lastName, email, passowrd);
    }
}
