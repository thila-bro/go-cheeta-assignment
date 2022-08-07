/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import assignment.src.Branch;
import assignment.src.City;
import assignment.src.DBUtil;
import assignment.src.Driver;
import assignment.src.VehicleType;
import java.util.List;

/**
 *
 * @author thilan
 */
public class AdminBL {
    private DBUtil util;

    public AdminBL(DBUtil util) {
        this.util = util;
    }
    
    public boolean addCity(String name) {
        City city = new City(0, name);
        return this.util.addCity(city);
    }
    
    public List<City> getCities() {
        return this.util.getCities();
    }
    
    public boolean deleteCity(int id) {
        return this.util.deleteCity(id);
    }
    
    public City getCityById(int id) {
        return this.util.getCityById(id);
    }
    
    public boolean updateCity(String name, int id) {
        City city = new City(id, name);
        return this.util.updateCity(city);
    }
    
    public boolean addBranch(String email,String mobile,String fixed,String address1,String address2,int city) {
        Branch branch = new Branch(0, email, mobile, fixed, address1, address2, city, "");
        return this.util.addBranch(branch);
    }
    
    public boolean upadteBranch(int branch_id, String email,String mobile,String fixed,String address1,String address2,int city) {
        Branch branch = new Branch(branch_id, email, mobile, fixed, address1, address2, city, "");
        return this.util.upadteBranch(branch);
    }
    
    public List<Branch> getBranches() {
        return this.util.getBranches();
    }
    
    public boolean deleteBranch(int branch_id) {
        return this.util.deleteBranch(branch_id);
    }
    
    public Branch getBranchById(int branch_id) {
        return this.util.getBranchById(branch_id);
    }
    
    public boolean addVehicleType(String name) {
        VehicleType type = new VehicleType(0, name);
        return this.util.addVehicleType(type);
    }
    
    public List<VehicleType> getVehicleTypes() {
        return this.util.getVehicleTypes();
    }
    
    public boolean deleteVehicleType(int vehicleId) {
        return this.util.deleteVehicleType(vehicleId);
    }
    
    public VehicleType getVehicleTypeById(int vehicleType) {
        return this.util.getVehicleTypeById(vehicleType);
    }
    
    public boolean updateVehicleType(int id, String name) {
        VehicleType type = new VehicleType(id, name);
        return this.util.updateVehicleType(type);
    }
    
    public boolean addDriver(String firstName, String lastName, String email, String mobile, String drivingLicense, String licenseExpireDate, String nic) {
        Driver driver = new Driver(drivingLicense, licenseExpireDate, nic, 0, firstName, lastName, email, mobile);
        return this.util.addDriver(driver);
    }
    
    public List<Driver> getDrivers() {
        return this.util.getDrivers();
    }
    
    public boolean deleteDriver(int driverId) {
        return this.util.deleteDriver(driverId);
    }
    
    public Driver getDriverById(int driverId) {
        return this.util.getDriverById(driverId);
    }
    
    public boolean updateDriver(int driverId, String firstName, String lastName, String email, String mobile, String drivingLicense, String licenseExpireDate, String nic) {
        Driver driver = new Driver(drivingLicense, licenseExpireDate, nic, driverId, firstName, lastName, email, mobile);
        return this.util.updateDriver(driver);
    }

//    public boolean updateDriver(int driverId, String firstName, String lastName, String email, String mobile, String drivingLicense, String licenseExpireDate, String nic) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }
}
