/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.src;
import java.util.List;

/**
 *
 * @author thilan
 */
public interface DBUtil {
   public List<Customer> getCustomers();
   public boolean addUser(User customer);
   public User getUserByMobile(String mobile);
   
   // admin area 
   public boolean authAdmin(String email, String password);
   public boolean addCity(City city);
   public List<City> getCities();
   public List<City> getCitiesWithOutSelectedId(int id);
   public boolean deleteCity(int id);
   public City getCityById(int id);
   public boolean updateCity(City city);
   public boolean addBranch(Branch branch);
   public List<Branch> getBranches();
   public boolean deleteBranch(int branch_id);
   public Branch getBranchById(int branch_id);
   public boolean upadteBranch(Branch branch);
   public boolean addVehicleType(VehicleType type);
   public List<VehicleType> getVehicleTypes();
   public boolean deleteVehicleType(int vehicleId);
   public VehicleType getVehicleTypeById(int vehicleType);
   public boolean updateVehicleType(VehicleType type);
   public boolean addDriver(Driver driver);
   public List<Driver> getDrivers();
   public boolean deleteDriver(int driverId);
   public Driver getDriverById(int driverId);
   public boolean updateDriver(Driver driver);
   public boolean addBranchAdmin(Admin admin);
   public List<Admin> getAdmins();
   public Admin getAdminById(int adminId);
   public boolean updateBranchAdmin(Admin admin);
   public boolean deleteAdmin(int adminId);
   public boolean addVehicle(Vehicle vehilce);
   public List<Vehicle> getVehicles();
   public boolean deleteVehicle(int vehicleId);
   public Vehicle getVehicleById(int vehicleId);
   public boolean updateVehicle(Vehicle vehilce);
   public boolean addDestination(Distance distance);
   public Distance getDistanceBySourceIdAndDestinationId(int sourceId, int destinationId);
   public boolean deleteCustomer(int customerId);
   public Customer getCustomerById(int customerId);
   public boolean updateCustomer(Customer customer);
   public Admin getAdminByEmail(String email);
   public boolean updateAdminProfile(Admin admin);
   
   // customer arae
   public boolean authCustomer(String mobile, String password);
   public List<SelectedVehicle> getDriversByTypeIdAndSouceCity(int typeId, int cityId);
   public boolean addBooking(Booking booking);
   public List<Booking> getCustomersBookingsById(int customerId);
   public boolean addCustomer(Customer customer);
   public Customer getCustomerByMobileAndPassword(String mobile, String pasword);
   public boolean addFeedback(Feedback feedback);
   public boolean updateCustomerProfile(Customer customer);

   // driver area 
   public boolean authDriver(String email, String password);
   public Driver getDriverByEmail(String email);
   public List<Booking> getDriverBookings(int driverId);
   public boolean driverBookingAccept(int bookingId);
   public boolean driverBookingComplete(int bookingId);
   public boolean updateDriverProfile(Driver driver);

}
