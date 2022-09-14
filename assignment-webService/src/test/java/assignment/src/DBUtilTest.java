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

/**
 *
 * @author thilanmaduranga
 */
public class DBUtilTest {
    
    public DBUtilTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }
    
    
    public void testCURDAdmin() {
        System.out.println("Admin");
        Admin admin = new Admin(8, "123", 0, "first name", "last name", "a@a.com", "1234567890");
        DBUtil util = MySQLUtil.getInstance();
        boolean expRes = true;
        boolean resAdd = util.addBranchAdmin(admin);
        assertEquals(expRes, resAdd);
        
//        Admin adminData = util.getBranchById(0)
    }
    
    public void testCURDBooking() {
        System.out.println("Booking");
//        Booking
    }
    
    @org.junit.Test
    public void testCURDBranch() {
        System.out.println("Branch");
        Branch branch = new Branch(17, "a@.acom", "1234567890", "0875432190", "address line 1", "address line 2", 69);
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
    
    @org.junit.Test
    public void testCURDCity() {
        System.out.print("City");
        City city = new City(71, "test");
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
    
    
    public void testCURDCustomer() {
        System.out.print("Customer");
        Customer customer = new Customer("1234567890", "123", 0, "first name", "last name", "a@acom");
        DBUtil util = MySQLUtil.getInstance();
        boolean expRes = true;
//        boolean resAdd = util.addCu
    }
    
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
    
    @org.junit.Test
    public void testCURDDriver() {
        System.out.println("Driver");
        Driver driver = new Driver(8, "B47657t67", "2022-08-12", "456789312", "password", 15, "first name", "last name", "a@a.com", "1234567890");
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
    
    @org.junit.Test
    public void testCURDVehicle() {
        System.out.print("Vehicle");
        Vehicle vehicle = new Vehicle(3, 19, 12, "BA 8990", true, 100);
        DBUtil util = MySQLUtil.getInstance();
        boolean expRes = true;
        boolean resAdd = util.addVehicle(vehicle);
        assertEquals(expRes, resAdd);
        
        Vehicle vehicleData = util.getVehicleById(vehicle.getVehicleId());
        assertEquals(vehicle.getDriverId(), vehicleData.getDriverId());
        assertEquals(vehicle.getTypeId(), vehicleData.getTypeId());
        assertEquals(vehicle.getRegisterNo(), vehicleData.getRegisterNo());
        assertEquals(vehicle.getRatePerKm(), vehicleData.getRatePerKm());
        
        boolean resDel = util.deleteVehicle(vehicle.getVehicleId());
        assertEquals(expRes, resDel);
    }
    
//    @org.junit.Test
//    public void testCURDVehicle() {
//        System.out.println("Vehicle Type");
//        VehicleType type = new VehicleType(20, "test", 200);
//        DBUtil util = MySQLUtil.getInstance();
//        boolean expRes = true;
//        boolean resAdd = util.addVehicleType(type);
//        assertEquals(expRes, resAdd);
//        
//        VehicleType typeData = util.getVehicleTypeById(type.getVehilceTypeId());
//        assertEquals(type.getVehicleType(), typeData.getVehicleType());
//        assertEquals(type.getInitialCost(), typeData.getInitialCost());
//        
//        boolean resDel = util.deleteVehicleType(type.getVehilceTypeId());
//        assertEquals(expRes, resDel);
//    }
    
    
    
    
    
    
    
    
    
    
    
    

    /**
     * Test of getCustomers method, of class DBUtil.
     */
//    @Test
//    public void testGetCustomers() {
//        System.out.println("getCustomers");
//        DBUtil instance = new DBUtilImpl();
//        List<Customer> expResult = null;
//        List<Customer> result = instance.getCustomers();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of addUser method, of class DBUtil.
//     */
//    @Test
//    public void testAddUser() {
//        System.out.println("addUser");
//        User customer = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.addUser(customer);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getUserByMobile method, of class DBUtil.
//     */
//    @Test
//    public void testGetUserByMobile() {
//        System.out.println("getUserByMobile");
//        String mobile = "";
//        DBUtil instance = new DBUtilImpl();
//        User expResult = null;
//        User result = instance.getUserByMobile(mobile);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of authUser method, of class DBUtil.
//     */
//    @Test
//    public void testAuthUser() {
//        System.out.println("authUser");
//        String mobile = "";
//        String password = "";
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.authUser(mobile, password);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of addCity method, of class DBUtil.
//     */
//    @Test
//    public void testAddCity() {
//        System.out.println("addCity");
//        City city = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.addCity(city);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getCities method, of class DBUtil.
//     */
//    @Test
//    public void testGetCities() {
//        System.out.println("getCities");
//        DBUtil instance = new DBUtilImpl();
//        List<City> expResult = null;
//        List<City> result = instance.getCities();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getCitiesWithOutSelectedId method, of class DBUtil.
//     */
//    @Test
//    public void testGetCitiesWithOutSelectedId() {
//        System.out.println("getCitiesWithOutSelectedId");
//        int id = 0;
//        DBUtil instance = new DBUtilImpl();
//        List<City> expResult = null;
//        List<City> result = instance.getCitiesWithOutSelectedId(id);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of deleteCity method, of class DBUtil.
//     */
//    @Test
//    public void testDeleteCity() {
//        System.out.println("deleteCity");
//        int id = 0;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.deleteCity(id);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getCityById method, of class DBUtil.
//     */
//    @Test
//    public void testGetCityById() {
//        System.out.println("getCityById");
//        int id = 0;
//        DBUtil instance = new DBUtilImpl();
//        City expResult = null;
//        City result = instance.getCityById(id);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateCity method, of class DBUtil.
//     */
//    @Test
//    public void testUpdateCity() {
//        System.out.println("updateCity");
//        City city = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.updateCity(city);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of addBranch method, of class DBUtil.
//     */
//    @Test
//    public void testAddBranch() {
//        System.out.println("addBranch");
//        Branch branch = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.addBranch(branch);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getBranches method, of class DBUtil.
//     */
//    @Test
//    public void testGetBranches() {
//        System.out.println("getBranches");
//        DBUtil instance = new DBUtilImpl();
//        List<Branch> expResult = null;
//        List<Branch> result = instance.getBranches();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of deleteBranch method, of class DBUtil.
//     */
//    @Test
//    public void testDeleteBranch() {
//        System.out.println("deleteBranch");
//        int branch_id = 0;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.deleteBranch(branch_id);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getBranchById method, of class DBUtil.
//     */
//    @Test
//    public void testGetBranchById() {
//        System.out.println("getBranchById");
//        int branch_id = 0;
//        DBUtil instance = new DBUtilImpl();
//        Branch expResult = null;
//        Branch result = instance.getBranchById(branch_id);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of upadteBranch method, of class DBUtil.
//     */
//    @Test
//    public void testUpadteBranch() {
//        System.out.println("upadteBranch");
//        Branch branch = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.upadteBranch(branch);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of addVehicleType method, of class DBUtil.
//     */
//    @Test
//    public void testAddVehicleType() {
//        System.out.println("addVehicleType");
//        VehicleType type = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.addVehicleType(type);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getVehicleTypes method, of class DBUtil.
//     */
//    @Test
//    public void testGetVehicleTypes() {
//        System.out.println("getVehicleTypes");
//        DBUtil instance = new DBUtilImpl();
//        List<VehicleType> expResult = null;
//        List<VehicleType> result = instance.getVehicleTypes();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of deleteVehicleType method, of class DBUtil.
//     */
//    @Test
//    public void testDeleteVehicleType() {
//        System.out.println("deleteVehicleType");
//        int vehicleId = 0;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.deleteVehicleType(vehicleId);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getVehicleTypeById method, of class DBUtil.
//     */
//    @Test
//    public void testGetVehicleTypeById() {
//        System.out.println("getVehicleTypeById");
//        int vehicleType = 0;
//        DBUtil instance = new DBUtilImpl();
//        VehicleType expResult = null;
//        VehicleType result = instance.getVehicleTypeById(vehicleType);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateVehicleType method, of class DBUtil.
//     */
//    @Test
//    public void testUpdateVehicleType() {
//        System.out.println("updateVehicleType");
//        VehicleType type = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.updateVehicleType(type);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of addDriver method, of class DBUtil.
//     */
//    @Test
//    public void testAddDriver() {
//        System.out.println("addDriver");
//        Driver driver = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.addDriver(driver);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getDrivers method, of class DBUtil.
//     */
//    @Test
//    public void testGetDrivers() {
//        System.out.println("getDrivers");
//        DBUtil instance = new DBUtilImpl();
//        List<Driver> expResult = null;
//        List<Driver> result = instance.getDrivers();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of deleteDriver method, of class DBUtil.
//     */
//    @Test
//    public void testDeleteDriver() {
//        System.out.println("deleteDriver");
//        int driverId = 0;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.deleteDriver(driverId);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getDriverById method, of class DBUtil.
//     */
//    @Test
//    public void testGetDriverById() {
//        System.out.println("getDriverById");
//        int driverId = 0;
//        DBUtil instance = new DBUtilImpl();
//        Driver expResult = null;
//        Driver result = instance.getDriverById(driverId);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
////        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateDriver method, of class DBUtil.
//     */
//    @Test
//    public void testUpdateDriver() {
//        System.out.println("updateDriver");
//        Driver driver = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.updateDriver(driver);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of addBranchAdmin method, of class DBUtil.
//     */
//    @Test
//    public void testAddBranchAdmin() {
//        System.out.println("addBranchAdmin");
//        Admin admin = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.addBranchAdmin(admin);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getAdmins method, of class DBUtil.
//     */
//    @Test
//    public void testGetAdmins() {
//        System.out.println("getAdmins");
//        DBUtil instance = new DBUtilImpl();
//        List<Admin> expResult = null;
//        List<Admin> result = instance.getAdmins();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getAdminById method, of class DBUtil.
//     */
//    @Test
//    public void testGetAdminById() {
//        System.out.println("getAdminById");
//        int adminId = 0;
//        DBUtil instance = new DBUtilImpl();
//        Admin expResult = null;
//        Admin result = instance.getAdminById(adminId);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateBranchAdmin method, of class DBUtil.
//     */
//    @Test
//    public void testUpdateBranchAdmin() {
//        System.out.println("updateBranchAdmin");
//        Admin admin = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.updateBranchAdmin(admin);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of deleteAdmin method, of class DBUtil.
//     */
//    @Test
//    public void testDeleteAdmin() {
//        System.out.println("deleteAdmin");
//        int adminId = 0;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.deleteAdmin(adminId);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of addVehicle method, of class DBUtil.
//     */
//    @Test
//    public void testAddVehicle() {
//        System.out.println("addVehicle");
//        Vehicle vehilce = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.addVehicle(vehilce);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getVehicles method, of class DBUtil.
//     */
//    @Test
//    public void testGetVehicles() {
//        System.out.println("getVehicles");
//        DBUtil instance = new DBUtilImpl();
//        List<Vehicle> expResult = null;
//        List<Vehicle> result = instance.getVehicles();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of deleteVehicle method, of class DBUtil.
//     */
//    @Test
//    public void testDeleteVehicle() {
//        System.out.println("deleteVehicle");
//        int vehicleId = 0;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.deleteVehicle(vehicleId);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getVehicleById method, of class DBUtil.
//     */
//    @Test
//    public void testGetVehicleById() {
//        System.out.println("getVehicleById");
//        int vehicleId = 0;
//        DBUtil instance = new DBUtilImpl();
//        Vehicle expResult = null;
//        Vehicle result = instance.getVehicleById(vehicleId);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateVehicle method, of class DBUtil.
//     */
//    @Test
//    public void testUpdateVehicle() {
//        System.out.println("updateVehicle");
//        Vehicle vehilce = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.updateVehicle(vehilce);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of addDestination method, of class DBUtil.
//     */
//    @Test
//    public void testAddDestination() {
//        System.out.println("addDestination");
//        Distance distance = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.addDestination(distance);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getDistanceBySourceIdAndDestinationId method, of class DBUtil.
//     */
//    @Test
//    public void testGetDistanceBySourceIdAndDestinationId() {
//        System.out.println("getDistanceBySourceIdAndDestinationId");
//        int sourceId = 0;
//        int destinationId = 0;
//        DBUtil instance = new DBUtilImpl();
//        Distance expResult = null;
//        Distance result = instance.getDistanceBySourceIdAndDestinationId(sourceId, destinationId);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of authCustomer method, of class DBUtil.
//     */
//    @Test
//    public void testAuthCustomer() {
//        System.out.println("authCustomer");
//        String mobile = "";
//        String password = "";
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.authCustomer(mobile, password);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getDriversByTypeIdAndSouceCity method, of class DBUtil.
//     */
//    @Test
//    public void testGetDriversByTypeIdAndSouceCity() {
//        System.out.println("getDriversByTypeIdAndSouceCity");
//        int typeId = 0;
//        int cityId = 0;
//        DBUtil instance = new DBUtilImpl();
//        List<SelectedVehicle> expResult = null;
//        List<SelectedVehicle> result = instance.getDriversByTypeIdAndSouceCity(typeId, cityId);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of addBooking method, of class DBUtil.
//     */
//    @Test
//    public void testAddBooking() {
//        System.out.println("addBooking");
//        Booking booking = null;
//        DBUtil instance = new DBUtilImpl();
//        boolean expResult = false;
//        boolean result = instance.addBooking(booking);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }

//    public class DBUtilImpl implements DBUtil {
//
//        public List<Customer> getCustomers() {
//            return null;
//        }
//
//        public boolean addUser(User customer) {
//            return false;
//        }
//
//        public User getUserByMobile(String mobile) {
//            return null;
//        }
//
//        public boolean authUser(String mobile, String password) {
//            return false;
//        }
//
//        public boolean addCity(City city) {
//            return false;
//        }
//
//        public List<City> getCities() {
//            return null;
//        }
//
//        public List<City> getCitiesWithOutSelectedId(int id) {
//            return null;
//        }
//
//        public boolean deleteCity(int id) {
//            return false;
//        }
//
//        public City getCityById(int id) {
//            return null;
//        }
//
//        public boolean updateCity(City city) {
//            return false;
//        }
//
//        public boolean addBranch(Branch branch) {
//            return false;
//        }
//
//        public List<Branch> getBranches() {
//            return null;
//        }
//
//        public boolean deleteBranch(int branch_id) {
//            return false;
//        }
//
//        public Branch getBranchById(int branch_id) {
//            return null;
//        }
//
//        public boolean upadteBranch(Branch branch) {
//            return false;
//        }
//
//        public boolean addVehicleType(VehicleType type) {
//            return false;
//        }
//
//        public List<VehicleType> getVehicleTypes() {
//            return null;
//        }
//
//        public boolean deleteVehicleType(int vehicleId) {
//            return false;
//        }
//
//        public VehicleType getVehicleTypeById(int vehicleType) {
//            return null;
//        }
//
//        public boolean updateVehicleType(VehicleType type) {
//            return false;
//        }
//
//        public boolean addDriver(Driver driver) {
//            return false;
//        }
//
//        public List<Driver> getDrivers() {
//            return null;
//        }
//
//        public boolean deleteDriver(int driverId) {
//            return false;
//        }
//
//        public Driver getDriverById(int driverId) {
//            return null;
//        }
//
//        public boolean updateDriver(Driver driver) {
//            return false;
//        }
//
//        public boolean addBranchAdmin(Admin admin) {
//            return false;
//        }
//
//        public List<Admin> getAdmins() {
//            return null;
//        }
//
//        public Admin getAdminById(int adminId) {
//            return null;
//        }
//
//        public boolean updateBranchAdmin(Admin admin) {
//            return false;
//        }
//
//        public boolean deleteAdmin(int adminId) {
//            return false;
//        }
//
//        public boolean addVehicle(Vehicle vehilce) {
//            return false;
//        }
//
//        public List<Vehicle> getVehicles() {
//            return null;
//        }
//
//        public boolean deleteVehicle(int vehicleId) {
//            return false;
//        }
//
//        public Vehicle getVehicleById(int vehicleId) {
//            return null;
//        }
//
//        public boolean updateVehicle(Vehicle vehilce) {
//            return false;
//        }
//
//        public boolean addDestination(Distance distance) {
//            return false;
//        }
//
//        public Distance getDistanceBySourceIdAndDestinationId(int sourceId, int destinationId) {
//            return null;
//        }
//
//        public boolean authCustomer(String mobile, String password) {
//            return false;
//        }
//
//        public List<SelectedVehicle> getDriversByTypeIdAndSouceCity(int typeId, int cityId) {
//            return null;
//        }
//
//        public boolean addBooking(Booking booking) {
//            return false;
//        }
//    }
    
}
