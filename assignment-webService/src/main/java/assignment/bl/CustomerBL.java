/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import assignment.db.MySQLUtil;
import assignment.src.Booking;
import assignment.src.Customer;
import assignment.src.DBUtil;
import assignment.src.Feedback;
import assignment.src.SelectedVehicle;
import java.util.List;

/**
 *
 * @author thilan
 */
public class CustomerBL {
    private static final CustomerBL instance = new CustomerBL();
    private final DBUtil util = MySQLUtil.getInstance();

    private CustomerBL() {
    }
    
    public static CustomerBL getInstance() {
        return instance;
    }

    public boolean authCustomer(String mobile, String password) {
        return this.util.authCustomer(mobile, password);
    }

    public List<SelectedVehicle> getDriversByTypeIdAndSouceCity(int typeId, int cityId) {
        return this.util.getDriversByTypeIdAndSouceCity(typeId, cityId);
    }

    public boolean addBooking(int customerId, int vehicleId, int vehicleType, int pickUpCityId, int dropOffCityId, String pickUpStreet, String dropOffStreet, double price, double distance) {
        System.out.println("saving failed in customer bl");
        Booking booking = new Booking(customerId, 0, vehicleId, pickUpCityId, dropOffCityId, vehicleType, pickUpStreet, dropOffStreet, price, distance, 0, false);
        return this.util.addBooking(booking);
    }

    public List<Booking> getCustomersBookingsById(int customerId) {
        return this.util.getCustomersBookingsById(customerId);
    }    

    public boolean addCustomer(String mobile, String fristName, String lastName, String email, String password) {
        Customer customer = new Customer(mobile, password, 0, fristName, lastName, email);
        return this.util.addCustomer(customer);
    }

    public Customer getCustomerByMobileAndPassword(String mobile, String pasword) {
        return this.util.getCustomerByMobileAndPassword(mobile, pasword);
    }

    public boolean addFeedback(int bookingId, int tripRate, String userFeedback) {
        Feedback feedback = new Feedback(0, bookingId, tripRate, userFeedback);
        return this.util.addFeedback(feedback);
    }

    public Customer getCustomerById(int customerId) {
        return this.util.getCustomerById(customerId);
    }

    public boolean updateCustomerProfile(int customerId, String firstName, String lastName, String email, String passowrd) {
        Customer oldCustomer = this.getCustomerById(customerId);
        Customer customer = new Customer(oldCustomer.getMobile(), passowrd, customerId, firstName, lastName, email);
        return this.util.updateCustomerProfile(customer);
    }
    
    // customer last booking
    public Booking getCustomerLastBookingByCustomerId(int customerId) {
        return this.util.getCustomerLastBookingByCustomerId(customerId);
    }
}
