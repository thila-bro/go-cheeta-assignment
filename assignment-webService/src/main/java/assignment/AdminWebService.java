/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package assignment;

import assignment.bl.AdminBL;
import assignment.db.MySQLUtil;
import assignment.src.Branch;
import assignment.src.City;
import assignment.src.DBUtil;
import assignment.src.Driver;
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
    private DBUtil util = new MySQLUtil();
    private AdminBL adminBL = new AdminBL(util);

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
    @WebMethod(operationName = "addCity")
    public boolean addCity(@WebParam(name = "name") String name) {
        return this.adminBL.addCity(name);
    }
    
    @WebMethod(operationName = "getCities")
    public List<City> getCities() {
        return this.adminBL.getCities();
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
    public boolean addVehicleType(@WebParam(name = "name") String name) {
        return this.adminBL.addVehicleType(name);
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
    public boolean updateVehicleType(@WebParam(name = "id") int id, @WebParam(name = "name") String name) {
        return this.adminBL.updateVehicleType(id, name);
    }
    
    @WebMethod(operationName = "addDriver")
    public boolean addDriver(@WebParam(name = "firstName") String firstName,@WebParam(name = "lastName") String lastName,@WebParam(name = "email") String email,@WebParam(name = "mobile") String mobile,@WebParam(name = "drivingLicense") String drivingLicense,@WebParam(name = "licenseExpireDate") String licenseExpireDate,@WebParam(name = "nic") String nic) {
        return this.adminBL.addDriver(firstName, lastName, email, mobile, drivingLicense, licenseExpireDate, nic);
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
    public boolean updateDriver(@WebParam(name = "driverId") int driverId, @WebParam(name = "firstName") String firstName,@WebParam(name = "lastName") String lastName,@WebParam(name = "email") String email,@WebParam(name = "mobile") String mobile,@WebParam(name = "drivingLicense") String drivingLicense,@WebParam(name = "licenseExpireDate") String licenseExpireDate,@WebParam(name = "nic") String nic) {
        return this.adminBL.updateDriver(driverId, firstName, lastName, email, mobile, drivingLicense, licenseExpireDate, nic);
    }
}
