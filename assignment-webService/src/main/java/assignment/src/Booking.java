/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.src;

/**
 *
 * @author thilanmaduranga
 */
public class Booking {
    private int bookingId;
    private int vehicleId;
    private int pickUpCityId;
    private int dropOffCityId;
    private int vehicleTypeId;
    private String pickUpStreet;
    private String dropOffStreet;
    private double price;
    private double distance;
    private int status;

    public Booking(int bookingId, int vehicleId, int pickUpCityId, int dropOffCityId, int vehicleTypeId, String pickUpStreet, String dropOffStreet, double price, double distance, int status) {
        this.bookingId = bookingId;
        this.vehicleId = vehicleId;
        this.pickUpCityId = pickUpCityId;
        this.dropOffCityId = dropOffCityId;
        this.vehicleTypeId = vehicleTypeId;
        this.pickUpStreet = pickUpStreet;
        this.dropOffStreet = dropOffStreet;
        this.price = price;
        this.distance = distance;
        this.status = status;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public int getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(int vehicleId) {
        this.vehicleId = vehicleId;
    }

    public int getPickUpCityId() {
        return pickUpCityId;
    }

    public void setPickUpCityId(int pickUpCityId) {
        this.pickUpCityId = pickUpCityId;
    }

    public int getDropOffCityId() {
        return dropOffCityId;
    }

    public void setDropOffCityId(int dropOffCityId) {
        this.dropOffCityId = dropOffCityId;
    }

    public int getVehicleTypeId() {
        return vehicleTypeId;
    }

    public void setVehicleTypeId(int vehicleTypeId) {
        this.vehicleTypeId = vehicleTypeId;
    }

    public String getPickUpStreet() {
        return pickUpStreet;
    }

    public void setPickUpStreet(String pickUpStreet) {
        this.pickUpStreet = pickUpStreet;
    }

    public String getDropOffStreet() {
        return dropOffStreet;
    }

    public void setDropOffStreet(String dropOffStreet) {
        this.dropOffStreet = dropOffStreet;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getDistance() {
        return distance;
    }

    public void setDistance(double distance) {
        this.distance = distance;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
