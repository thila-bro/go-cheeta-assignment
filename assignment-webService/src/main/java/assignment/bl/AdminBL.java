/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import assignment.src.Admin;
import assignment.src.Branch;
import assignment.src.City;
import assignment.src.DBUtil;
import assignment.src.Distance;
import assignment.src.Driver;
import assignment.src.Vehicle;
import assignment.src.VehicleType;
import java.util.List;

/**
 *
 * @author thilan
 */
public class AdminBL {
    private final DBUtil util;

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
    
    public List<City> getCitiesWithOutSelectedId(int id) {
        return this.util.getCitiesWithOutSelectedId(id);
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
    
    public boolean addVehicleType(String name, double initialCost) {
        VehicleType type = new VehicleType(0, name, initialCost);
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
    
    public boolean updateVehicleType(int id, String name,double initialCost) {
        VehicleType type = new VehicleType(id, name, initialCost);
        return this.util.updateVehicleType(type);
    }
    
    public boolean addDriver(int branchId, String firstName, String lastName, String email, String mobile, String drivingLicense, String licenseExpireDate, String nic) {
        Driver driver = new Driver(branchId, drivingLicense, licenseExpireDate, nic, 0, firstName, lastName, email, mobile);
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
    
    public boolean updateDriver(int branchId, int driverId, String firstName, String lastName, String email, String mobile, String drivingLicense, String licenseExpireDate, String nic) {
        Driver driver = new Driver(branchId, drivingLicense, licenseExpireDate, nic, driverId, firstName, lastName, email, mobile);
        return this.util.updateDriver(driver);
    }

    public boolean addBranchAdmin(int branchId, String firstName, String lastName, String email, String mobile, String password) {
        Admin admin = new Admin(branchId, password, 0, firstName, lastName, email, mobile);
        return this.util.addBranchAdmin(admin);
    }

    public List<Admin> getAdmins() {
        return  this.util.getAdmins();
    }

    public Admin getAdminById(int adminId) {
        return this.util.getAdminById(adminId);
    }

    public boolean updateBranchAdmin(int adminId, int branchId, String firstName, String lastName, String email, String mobile, String password) {
        Admin admin = new Admin(branchId, password, adminId, firstName, lastName, email, mobile);
        return this.util.updateBranchAdmin(admin);
    }

    public boolean deleteAdmin(int adminId) {
        return this.util.deleteAdmin(adminId);
    }

    public boolean addVehicle(int driverId, int vehicleTypeId, String vehilceNo, double ratePerKm) {
        Vehicle vehilce = new Vehicle(0, vehicleTypeId, driverId, vehilceNo, true, ratePerKm);
        return this.util.addVehicle(vehilce);
    }

    public List<Vehicle> getVehicles() {
        return this.util.getVehicles();
    }

    public boolean deleteVehicle(int vehicleId) {
        return  this.util.deleteVehicle(vehicleId);
    }

    public Vehicle getVehicleById(int vehicleId) {
        return this.util.getVehicleById(vehicleId);
    }

    public boolean updateVehicle(int vehicleId, int driverId, int vehicleTypeId, String vehilceNo, double ratePerKm) {
        Vehicle vehilce = new Vehicle(vehicleId, vehicleTypeId, driverId, vehilceNo, true, ratePerKm);
        return this.util.updateVehicle(vehilce);
    }

    public boolean addDestination(int sourceId, int destinationId, String cityDistance) {
        Distance distance = new Distance(0, destinationId, sourceId, cityDistance);
        return this.util.addDestination(distance);
    }

    public Distance getDistanceBySourceIdAndDestinationId(int sourceId, int destinationId) {
        return this.util.getDistanceBySourceIdAndDestinationId(sourceId, destinationId);
    }
}
