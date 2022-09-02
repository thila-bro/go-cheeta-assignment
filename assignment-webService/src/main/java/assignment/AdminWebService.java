/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package assignment;

import assignment.bl.AdminBL;
import assignment.db.MySQLUtil;
import assignment.src.Admin;
import assignment.src.Branch;
import assignment.src.City;
import assignment.src.Customer;
import assignment.src.DBUtil;
import assignment.src.Distance;
import assignment.src.Driver;
import assignment.src.Vehicle;
import assignment.src.VehicleType;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author thilan
 */
@WebService(serviceName = "AdminWebService")
public class AdminWebService {
    private static final AdminWebService instance = new AdminWebService();   
    private final DBUtil util = MySQLUtil.getInstance();
    private final AdminBL adminBL = AdminBL.getInstance();
    
    
//    @WebMethod(operationName = "getInstance");
    public static AdminWebService getInstance() {
        return instance;
    }
    
//    @WebMethod(operationName = "addCity");
    public boolean addCity(@WebParam(name = "name") String name) {
        return this.adminBL.addCity(name);
    }
    
    @WebMethod(operationName = "getCities")
    public List<City> getCities() {
        return this.adminBL.getCities();
    }
    
    @WebMethod(operationName = "getCitiesWithOutSelectedId")
    public List<City> getCitiesWithOutSelectedId(@WebParam(name = "id") int id) {
        return this.adminBL.getCitiesWithOutSelectedId(id);
    }
    
    @WebMethod(operationName = "deleteCity")
    public boolean deleteCity(@WebParam(name = "id") int id) {
        return this.adminBL.deleteCity(id);
    }
    
    @WebMethod(operationName = "getCityById")
    public City getCityById(@WebParam(name = "id") int id) {
        return this.adminBL.getCityById(id);
    }
    
    @WebMethod(operationName = "updateCity")
    public boolean updateCity(@WebParam(name = "name") String name,@WebParam(name = "id") int id) {
        return this.adminBL.updateCity(name, id);
    }
    
    @WebMethod(operationName = "addBranch")
    public boolean addBranch(@WebParam(name = "email") String email, @WebParam(name = "mobile") String mobile, @WebParam(name = "fixed") String fixed, @WebParam(name = "address1") String address1, @WebParam(name = "address2") String address2, @WebParam(name = "city") int city) {
        return this.adminBL.addBranch(email, mobile, fixed, address1, address2, city);
    }
    
    public boolean upadteBranch(@WebParam(name = "branch_id") int branch_id, @WebParam(name = "email") String email, @WebParam(name = "mobile") String mobile, @WebParam(name = "fixed") String fixed, @WebParam(name = "address1") String address1, @WebParam(name = "address2") String address2, @WebParam(name = "city") int city) {
        return this.adminBL.upadteBranch(branch_id, email, mobile, fixed, address1, address2, city);
    }
    
    @WebMethod(operationName = "getBranches")
    public List<Branch> getBranches() {
        return this.adminBL.getBranches();
    }
    
    @WebMethod(operationName = "deleteBranch")
    public boolean deleteBranch(@WebParam(name = "branch_id") int branch_id) {
        return this.adminBL.deleteBranch(branch_id);
    }
    
    @WebMethod(operationName = "getBranchById")
    public Branch getBranchById(@WebParam(name = "branch_id") int branch_id) {
        return this.adminBL.getBranchById(branch_id);
    }
    
    @WebMethod(operationName = "addVehicleType")
    public boolean addVehicleType(@WebParam(name = "name") String name, @WebParam(name = "initialCost") double initialCost) {
        return this.adminBL.addVehicleType(name, initialCost);
    }
    
    @WebMethod(operationName = "getVehicleTypes")
    public List<VehicleType> getVehicleTypes() {
        return this.adminBL.getVehicleTypes();
    }
    
    @WebMethod(operationName = "deleteVehicleType")
    public boolean deleteVehicleType(@WebParam(name = "vehicleId") int vehicleId) {
        return this.adminBL.deleteVehicleType(vehicleId);
    }
    
    @WebMethod(operationName = "getVehicleTypeById")
    public VehicleType getVehicleTypeById(@WebParam(name = "vehicleId") int vehicleId) {
        return this.adminBL.getVehicleTypeById(vehicleId);
    }
    
    @WebMethod(operationName = "updateVehicleType")
    public boolean updateVehicleType(@WebParam(name = "id") int id, @WebParam(name = "name") String name, @WebParam(name = "initialCost") double initialCost) {
        return this.adminBL.updateVehicleType(id, name, initialCost);
    }
    
    @WebMethod(operationName = "addDriver")
    public boolean addDriver(@WebParam(name = "branchId") int branchId, @WebParam(name = "firstName") String firstName,@WebParam(name = "lastName") String lastName,@WebParam(name = "email") String email,@WebParam(name = "mobile") String mobile,@WebParam(name = "drivingLicense") String drivingLicense,@WebParam(name = "licenseExpireDate") String licenseExpireDate,@WebParam(name = "nic") String nic) {
        return this.adminBL.addDriver(branchId, firstName, lastName, email, mobile, drivingLicense, licenseExpireDate, nic);
    }
    
    @WebMethod(operationName = "getDrivers")
    public List<Driver> getDrivers() {
        return this.adminBL.getDrivers();
    }
    
    @WebMethod(operationName = "deleteDriver")
    public boolean deleteDriver(@WebParam(name = "driverId") int driverId) {
        return this.adminBL.deleteDriver(driverId);
    }
    
    @WebMethod(operationName = "getDriverById")
    public Driver getDriverById(@WebParam(name = "driverId") int driverId) {
        return this.adminBL.getDriverById(driverId);
    }
    
    @WebMethod(operationName = "updateDriver")
    public boolean updateDriver(@WebParam(name = "branchId") int branchId, @WebParam(name = "driverId") int driverId, @WebParam(name = "firstName") String firstName,@WebParam(name = "lastName") String lastName,@WebParam(name = "email") String email,@WebParam(name = "mobile") String mobile,@WebParam(name = "drivingLicense") String drivingLicense,@WebParam(name = "licenseExpireDate") String licenseExpireDate,@WebParam(name = "nic") String nic) {
        return this.adminBL.updateDriver(branchId, driverId, firstName, lastName, email, mobile, drivingLicense, licenseExpireDate, nic);
    }
    
    @WebMethod(operationName = "addBranchAdmin")
    public boolean addBranchAdmin(@WebParam(name = "driverId") int branchId,@WebParam(name = "firstName") String firstName,@WebParam(name = "lastName") String lastName,@WebParam(name = "email") String email,@WebParam(name = "mobile") String mobile,@WebParam(name = "password") String password) {
        return this.adminBL.addBranchAdmin(branchId, firstName, lastName, email, mobile, password);
    }
    
    @WebMethod(operationName = "updateBranchAdmin")
    public boolean updateBranchAdmin(@WebParam(name = "adminId") int adminId, @WebParam(name = "driverId") int branchId,@WebParam(name = "firstName") String firstName,@WebParam(name = "lastName") String lastName,@WebParam(name = "email") String email,@WebParam(name = "mobile") String mobile,@WebParam(name = "password") String password) {
        return this.adminBL.updateBranchAdmin(adminId, branchId, firstName, lastName, email, mobile, password);
    }
    
    @WebMethod(operationName = "getAdmins")
    public List<Admin> getAdmins() {
        return this.adminBL.getAdmins();
    }
    
    @WebMethod(operationName = "getAdminById")
    public Admin getAdminById(@WebParam(name = "adminId") int adminId) {
        return this.adminBL.getAdminById(adminId);
    }
    
    @WebMethod(operationName = "deleteAdmin")
    public boolean deleteAdmin(@WebParam(name = "adminId") int adminId) {
        return this.adminBL.deleteAdmin(adminId);
    }
    
    @WebMethod(operationName = "addVehicle")
    public boolean addVehicle(@WebParam(name = "driverId") int driverId, @WebParam(name = "vehicleTypeId") int vehicleTypeId, @WebParam(name = "vehilceNo") String vehilceNo, @WebParam(name = "ratePerKm") double ratePerKm) {
        return this.adminBL.addVehicle(driverId, vehicleTypeId, vehilceNo, ratePerKm);
    }
    
    @WebMethod(operationName = "getVehicles")
    public List<Vehicle> getVehicles() {
        return this.adminBL.getVehicles();
    }
    
    @WebMethod(operationName = "deleteVehicle")
    public boolean deleteVehicle(@WebParam(name = "vehicleId") int vehicleId) {
        return this.adminBL.deleteVehicle(vehicleId);
    }
    
    @WebMethod(operationName = "getVehicleById")
    public Vehicle getVehicleById(@WebParam(name = "vehicleId") int vehicleId) {
        return adminBL.getVehicleById(vehicleId);
    }
    
    @WebMethod(operationName = "updateVehicle")
    public boolean updateVehicle(@WebParam(name = "vehicleId") int vehicleId, @WebParam(name = "driverId") int driverId, @WebParam(name = "vehicleTypeId") int vehicleTypeId, @WebParam(name = "vehilceNo") String vehilceNo, @WebParam(name = "ratePerKm") double ratePerKm) {
        return this.adminBL.updateVehicle(vehicleId, driverId, vehicleTypeId, vehilceNo, ratePerKm);
    }
    
    @WebMethod(operationName = "addDestination")
    public boolean addDestination(@WebParam(name = "sourceId") int sourceId, @WebParam(name = "destinationId") int destinationId, @WebParam(name = "distance") String distance) {
        return this.adminBL.addDestination(sourceId, destinationId, distance);
    }
        
    @WebMethod(operationName = "getDistanceBySourceIdAndDestinationId")
    public Distance getDistanceBySourceIdAndDestinationId(@WebParam(name = "sourceId") int sourceId, @WebParam(name = "destinationId") int destinationId) {
        return this.adminBL.getDistanceBySourceIdAndDestinationId(sourceId, destinationId);
    }
    
    @WebMethod(operationName = "getCustomers")
    public List<Customer> getCustomers() {
        return this.adminBL.getCustomers();
    }
    
    @WebMethod(operationName = "deleteCustomer")
    public boolean deleteCustomer(@WebParam(name = "customerId") int customerId) {
        return this.adminBL.deleteCustomer(customerId);
    }
    
    @WebMethod(operationName = "getCustomerById")
    public Customer getCustomerById(@WebParam(name = "customerId") int customerId) {
        return this.adminBL.getCustomerById(customerId);
    }
    
//    @WebMethod(operationName = "updateCustomer")
    public boolean updateCustomer(int customerId, String firstName, String lastName, String email) {
        return this.adminBL.updateCustomer(customerId, firstName, lastName, email);
    }
}
