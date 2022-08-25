/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import assignment.src.Booking;
import assignment.src.DBUtil;
import assignment.src.Driver;
import assignment.src.SelectedVehicle;
import java.util.List;

/**
 *
 * @author thilan
 */
public class CustomerBL {
    private DBUtil util;

    public CustomerBL(DBUtil util) {
        this.util = util;
    }

    public boolean authCustomer(String mobile, String password) {
        return this.util.authCustomer(mobile, password);
    }

    public List<SelectedVehicle> getDriversByTypeIdAndSouceCity(int typeId, int cityId) {
        return this.util.getDriversByTypeIdAndSouceCity(typeId, cityId);
    }

    public boolean addBooking(int customerId, int vehicleId, int vehicleType, int pickUpCityId, int dropOffCityId, String pickUpStreet, String dropOffStreet, double price, double distance) {
        Booking booking = new Booking(customerId, 0, vehicleId, pickUpCityId, dropOffCityId, vehicleType, pickUpStreet, dropOffStreet, price, distance, 0);
        return this.util.addBooking(booking);
    }

    public List<Booking> getCustomersBookingsById(int customerId) {
        return this.util.getCustomersBookingsById(customerId);
    }    
}
