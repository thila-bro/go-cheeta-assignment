/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package assignment.src;

import assignment.db.MySQLUtil;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.Ignore;

/**
 *
 * @author thilanmaduranga
 */
public class DBUtilTest {
    
//    public DBUtilTest() {
//    }
//    
//    @BeforeClass
//    public static void setUpClass() {
//    }
//    
//    @AfterClass
//    public static void tearDownClass() {
//    }
//    
//    @Before
//    public void setUp() {
//    }
//    
//    @After
//    public void tearDown() {
//    }
    
    private final int adminId     = 22;
    private final int customerId  = 21;
    private final int branchId    = 43;
    private final int cityId      = 96;
    private final int driverId    = 27;
    private final int vehicleId   = 25;
    
    @Ignore
    @org.junit.Test
    public void testCURDAdmin() {
        System.out.println("Admin");
        Admin admin = new Admin(8, "123", this.adminId, "first name", "last name", "a@a.com", "1234567890");
        DBUtil util = MySQLUtil.getInstance();
        boolean expRes = true;
        boolean resAdd = util.addBranchAdmin(admin);
        assertEquals(expRes, resAdd);
        
        Admin adminData = util.getAdminById(admin.getId());
        assertEquals(admin.getFirstName(), adminData.getFirstName());
        assertEquals(admin.getLastName(), adminData.getLastName());
        assertEquals(admin.getEmail(), adminData.getEmail());
        assertEquals(admin.getMobile(), adminData.getMobile());
        
        boolean resDel = util.deleteAdmin(admin.getId());
        assertEquals(expRes, resDel);
    }
    
    @Ignore
    @org.junit.Test
    public void testCURDCustomer() {
        System.out.print("Customer");
        Customer customer = new Customer("1234567890", "123", this.customerId, "first name", "last name", "a@acom");
        DBUtil util = MySQLUtil.getInstance();
        boolean expRes = true;
        boolean resAdd = util.addCustomer(customer);
        assertEquals(expRes, resAdd);
        
        Customer customerData = util.getCustomerById(customer.getId());
        assertEquals(customer.getFirstName(), customerData.getFirstName());
        assertEquals(customer.getLastName(), customerData.getLastName());
        assertEquals(customer.getEmail(), customerData.getEmail());
        assertEquals(customer.getMobile(), customer.getMobile());
        
        boolean resDel = util.deleteCustomer(customer.getId());
        assertEquals(expRes, resDel);
    }
    
    @Ignore
    @org.junit.Test
    public void testCURDBranch() {
        System.out.println("Branch");
        Branch branch = new Branch(this.branchId, "a@.acom", "1234567890", "0875432190", "address line 1", "address line 2", 69);
        DBUtil util = MySQLUtil.getInstance();
        boolean expRes = true;
        boolean resAdd = util.addBranch(branch);
        assertEquals(expRes, resAdd);
        
        Branch branchData = util.getBranchById(branch.getBranchId());
        assertEquals(branch.getEmail(), branchData.getEmail());
        assertEquals(branch.getMobile(), branchData.getMobile());
        assertEquals(branch.getFixed(), branchData.getFixed());
        assertEquals(branch.getAddress1(), branchData.getAddress1());
        assertEquals(branch.getAddress2(), branch.getAddress2());
        assertEquals(branch.getCityId(), branchData.getCityId());
        
        boolean resDel = util.deleteBranch(branch.getBranchId());
        assertEquals(expRes, resDel);
    }
    
    @Ignore
    @org.junit.Test
    public void testCURDCity() {
        System.out.print("City");
        City city = new City(this.cityId, "test");
        DBUtil util = MySQLUtil.getInstance();
        boolean expRes = true;
        boolean resAdd = util.addCity(city);
        assertEquals(expRes, resAdd);
        
        City cityData = util.getCityById(city.getCityId());
        assertEquals(cityData.getName(), city.getName());
        
        city.setName("test updated");
        boolean resUpdate = util.updateCity(city);
        assertEquals(expRes, resUpdate);
        
        boolean resDel = util.deleteCity(city.getCityId());
        assertEquals(expRes, resDel);
    }
    
    @Ignore
    @org.junit.Test
    public void testCURDDistance() {
        System.out.println("Distance");
        Distance distance = new Distance(16, 65, 64, "555");
        DBUtil util = MySQLUtil.getInstance();
        boolean expRes = true;
        boolean resAdd = util.addDestination(distance);
        assertEquals(expRes, resAdd);
        
        Distance distanceData = util.getDistanceBySourceIdAndDestinationId(distance.getSourceId(), distance.getDestinationId());
        assertEquals(distance.getDistance(), distanceData.getDistance());
    }
    
    @Ignore
    @org.junit.Test
    public void testCURDDriver() {
        System.out.println("Driver");
        Driver driver = new Driver(8, "B47657t67", "2022-08-12", "456789312", "password", this.driverId, "first name", "last name", "a@a.com", "1234567890");
        DBUtil util = MySQLUtil.getInstance();
        boolean expRes = true;
        boolean resAdd = util.addDriver(driver);
        assertEquals(expRes, resAdd);
        
        Driver driverData = util.getDriverById(driver.getId());
        assertEquals(driver.getBranchId(), driverData.getBranchId());
        assertEquals(driver.getLicenseId(), driverData.getLicenseId());
        assertEquals(driver.getLicenseExpireDate(), driverData.getLicenseExpireDate());
        assertEquals(driver.getNationalId(), driverData.getNationalId());
        assertEquals(driver.getFirstName(), driverData.getFirstName());
        assertEquals(driver.getLastName(), driverData.getLastName());
        assertEquals(driver.getEmail(), driverData.getEmail());
        assertEquals(driver.getMobile(), driverData.getMobile());
        
        boolean resDel = util.deleteDriver(driver.getId());
        assertEquals(expRes, resDel);
    }
    
    @Ignore
    @org.junit.Test
    public void testCURDVehicle() {
        System.out.print("Vehicle");
        Vehicle vehicle = new Vehicle(this.vehicleId, 19, 12, "BA 8990", true, 100.0);
        DBUtil util = MySQLUtil.getInstance();
        boolean expRes = true;
        boolean resAdd = util.addVehicle(vehicle);
        assertEquals(expRes, resAdd);
        
        Vehicle vehicleData = util.getVehicleById(vehicle.getVehicleId());
        assertEquals(vehicle.getDriverId(), vehicleData.getDriverId());
        assertEquals(vehicle.getTypeId(), vehicleData.getTypeId());
        assertEquals(vehicle.getRegisterNo(), vehicleData.getRegisterNo());
        
        boolean resDel = util.deleteVehicle(vehicle.getVehicleId());
        assertEquals(expRes, resDel);
    }
}
