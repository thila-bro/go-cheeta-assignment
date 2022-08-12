/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.db;

import assignment.src.Admin;
import assignment.src.Branch;
import assignment.src.City;
import assignment.src.Customer;
import assignment.src.DBUtil;
import assignment.src.Driver;
import assignment.src.User;
import assignment.src.Vehicle;
import assignment.src.VehicleType;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author thilan
 */
public class MySQLUtil implements DBUtil {
    private Connection con;
    private Statement stmt;
    private ResultSet rs;

    public MySQLUtil() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.con = DriverManager.getConnection("jdbc:mysql://localhost/assignment-db?allowPublicKeyRetrieval=true&useSSL=false&user=root&password=password");
        } catch(ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    @Override
    public List<Customer> getCustomers() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_customers`();");

            List<Customer> customers = new ArrayList<>();

            while (rs.next()) {
                Customer customer = new Customer(rs.getString("mobile"), rs.getString("password"), rs.getInt("id"), rs.getString("firstName"), rs.getString("lastName"), rs.getString("email"));
                customers.add(customer);
            }
            
            return customers;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean addUser(User user) {
        try {

            this.stmt  = this.con.prepareCall("CALL `add_user`('"+user.getFirstName()+"','"+user.getLastName()+"','"+user.getPassword()+"','"+user.getEmail()+"','"+user.getMobile()+"');");            
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e);
            return false;
        }
    }
    
    @Override
    public User getUserByMobile(String mobile) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_user_by_mobile`('"+mobile+"');");
            
            if(rs.next()) {
                User user = new User(rs.getString("password"), rs.getInt("type"), rs.getInt("id"), rs.getString("firstName"), rs.getString("lastName"), rs.getString("email"), rs.getString("mobile"));
                return user;
            } else {
                return null;
            }
            
            
        } catch(SQLException e) {
            System.out.print(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean authUser(String mobile, String password) {
        try {
            this.stmt = this.con.createStatement();
            this.rs   = this.stmt.executeQuery("CALL `assignment-db`.`auth_user`('"+mobile+"', '"+password+"');");
            
            return rs.next();
        } catch(SQLException e) {
            System.err.println(e.getMessage());
            return false;
        }
    }
    
    
    
   
    
    // admin area  
    @Override
    public boolean addCity(City city) {
        try {
            this.stmt  = this.con.prepareCall("CALL `add_city`('"+city.getName()+"');");            
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public List<City> getCities() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_cities`();");

            List<City> cities = new ArrayList<>();

            while (rs.next()) {
                City city = new City(rs.getInt("id"), rs.getString("city"));
                cities.add(city);
            }
            
            return cities;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean deleteCity(int id) {
        try {
            this.stmt  = this.con.prepareCall("CALL `delete_city`('"+id+"');");            
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
        
    @Override
    public City getCityById(int id) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_city_by_id`('"+id+"');");
        
            if(rs.next()) {
                City city = new City(rs.getInt("id"), rs.getString("city"));
                return city;
            } else {
                return null;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean updateCity(City city) {
        try {
            this.stmt  = this.con.prepareCall("CALL `update_city`('"+city.getCityId()+"','"+city.getName()+"');");            
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean addBranch(Branch branch) {
        try {
            this.stmt  = this.con.prepareCall("CALL `add_branch`("+branch.getCityId()+", '"+branch.getEmail()+"', '"+branch.getMobile()+"', '"+branch.getFixed()+"', '"+branch.getAddress1()+"', '"+branch.getAddress2()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public List<Branch> getBranches() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_branches`();");

            List<Branch> branches = new ArrayList<>();

            while (rs.next()) {
                Branch branch = new Branch(rs.getInt("id"), rs.getString("email"), rs.getString("mobile"), rs.getString("fixed"), rs.getString("address1"), rs.getString("address2"), rs.getInt("city_id"), rs.getString("city"));
                branches.add(branch);
            }
            
            return branches;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean deleteBranch(int branch_id) {
        try {
            this.stmt  = this.con.prepareCall("CALL `delete_branch`('"+branch_id+"');");            
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    
    @Override
    public Branch getBranchById(int branch_id) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_branch_by_id`('"+branch_id+"');");
        
            if(rs.next()) {
                Branch branch = new Branch(rs.getInt("id"), rs.getString("email"), rs.getString("mobile"), rs.getString("fixed"), rs.getString("address1"), rs.getString("address2"), rs.getInt("city_id"), "");
                return branch;
            } else {
                return null;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    
    @Override
    public boolean upadteBranch(Branch branch) {
        try {
            this.stmt  = this.con.prepareCall("CALL `update_branch`("+branch.getBranchId()+", "+branch.getCityId()+", '"+branch.getEmail()+"', '"+branch.getMobile()+"', '"+branch.getFixed()+"', '"+branch.getAddress1()+"', '"+branch.getAddress2()+"');");            
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;

        } catch(Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean addVehicleType(VehicleType type) {
        try {
            this.stmt  = this.con.prepareCall("CALL `add_vehicle_type`('"+type.getVehicleType()+"');");            
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public List<VehicleType> getVehicleTypes() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_vehicle_types`();");

            List<VehicleType> vehicleTypes = new ArrayList<>();

            while (rs.next()) {
                VehicleType vehicleType = new VehicleType(rs.getInt("id"), rs.getString("type"));
                vehicleTypes.add(vehicleType);
            }
            
            return vehicleTypes;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean deleteVehicleType(int vehicleId) {
        try {
            this.stmt  = this.con.prepareCall("CALL `delete_vehicle_type`('"+vehicleId+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public VehicleType getVehicleTypeById(int vehicleId) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_vehicle_type_by_id`('"+vehicleId+"');");
        
            if(rs.next()) {
                VehicleType vehilceType = new VehicleType(rs.getInt("id"), rs.getString("type"));
                return vehilceType;
            } else {
                return null;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean updateVehicleType(VehicleType vehicleType) {
        try {
            this.stmt  = this.con.prepareCall("CALL `update_vehicle_category`("+vehicleType.getVehilceTypeId()+", '"+vehicleType.getVehicleType()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean addDriver(Driver driver) {
        try {
            this.stmt  = this.con.prepareCall("CALL `add_driver`('"+driver.getFirstName()+"', '"+driver.getLastName()+"', '"+driver.getMobile()+"', '"+driver.getEmail()+"', '"+driver.getLicenseId()+"', '"+driver.getNationalId()+"', '"+driver.getLicenseExpireDate()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public List<Driver> getDrivers() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_drivers`();");

            List<Driver> drivers = new ArrayList<>();

            while (rs.next()) {
                Driver driver = new Driver(rs.getString("license_no"), rs.getString("license_expire_date"), rs.getString("nic"), rs.getInt("id"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email"), rs.getString("mobile"));
                drivers.add(driver);
            }
            
            return drivers;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean deleteDriver(int driverId) {
        try {
            this.stmt  = this.con.prepareCall("CALL `delete_driver`('"+driverId+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public Driver getDriverById(int driverId) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_driver_by_id`("+driverId+");");
        
            if(rs.next()) {
                Driver driver = new Driver(rs.getString("license_no"), rs.getString("license_expire_date"), rs.getString("nic"), rs.getInt("id"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email"), rs.getString("mobile"));
                return driver;
            } else {
                return null;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean updateDriver(Driver driver) {
        try {
            this.stmt  = this.con.prepareCall("CALL `update_driver`("+driver.getId()+", '"+driver.getFirstName()+"', '"+driver.getLastName()+"', '"+driver.getMobile()+"', '"+driver.getEmail()+"', '"+driver.getLicenseId()+"', '"+driver.getNationalId()+"', '"+driver.getLicenseExpireDate()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean addBranchAdmin(Admin admin) {
        try {
            this.stmt  = this.con.prepareCall("CALL `add_admin`("+admin.getBranchId()+", '"+admin.getFirstName()+"', '"+admin.getLastName()+"', '"+admin.getMobile()+"', '"+admin.getEmail()+"', '"+admin.getPassword()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public List<Admin> getAdmins() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_admins`();");

            List<Admin> admins = new ArrayList<>();

            while (rs.next()) {
                Admin admin = new Admin(rs.getInt("branch_id"), rs.getString("password"), rs.getInt("id"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email"), rs.getString("mobile"));
                admins.add(admin);
            }
            
            return admins;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public Admin getAdminById(int adminId) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_admin_by_id`("+adminId+");");
        
            if(rs.next()) {
                Admin admin = new Admin(rs.getInt("branch_id"), rs.getString("password"), rs.getInt("id"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email"), rs.getString("mobile"));
                return admin;
            } else {
                return null;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean updateBranchAdmin(Admin admin) {
        try {
            this.stmt  = this.con.prepareCall("CALL `update_admin`("+admin.getId()+", "+admin.getBranchId()+", '"+admin.getFirstName()+"', '"+admin.getLastName()+"', '"+admin.getMobile()+"', '"+admin.getEmail()+"', '"+admin.getPassword()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean deleteAdmin(int adminId) {
        try {
            this.stmt  = this.con.prepareCall("CALL `delete_admin`('"+adminId+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean addVehicle(Vehicle vehicle) {
        try {
            this.stmt  = this.con.prepareCall("CALL `add_vehicle`("+vehicle.getDriverId()+", "+vehicle.getTypeId()+", '"+vehicle.getRegisterNo()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }   
    }
    
    @Override
    public List<Vehicle> getVehicles() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_vehicles`();");

            List<Vehicle> vehicles = new ArrayList<>();

            while (rs.next()) {
                Vehicle vehicle = new Vehicle(rs.getInt("id"), rs.getInt("type_id"), rs.getInt("driver_id"), rs.getString("register_no"), rs.getBoolean("availability"));
                vehicles.add(vehicle);
            }
            
            return vehicles;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean deleteVehicle(int vehicleId) {
        try {
            this.stmt  = this.con.prepareCall("CALL `delete_vehicle`('"+vehicleId+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public Vehicle getVehicleById(int vehicleId) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_vehicle_by_id`("+vehicleId+");");
        
            if(rs.next()) {
                Vehicle vehicle = new Vehicle(rs.getInt("id"), rs.getInt("type_id"), rs.getInt("driver_id"), rs.getString("register_no"), rs.getBoolean("availability"));
                return vehicle;
            } else {
                return null;
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    @Override
    public boolean updateVehicle(Vehicle vehicle) {
        try {
            this.stmt  = this.con.prepareCall("CALL `update_vehicle`( "+vehicle.getVehicleId()+", "+vehicle.getDriverId()+", "+vehicle.getTypeId()+", '"+vehicle.getRegisterNo()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        } 
    }
    
    // customer area
    @Override
    public boolean authCustomer(String mobile, String password) {
        try {
            this.stmt = this.con.createStatement();
            this.rs   = this.stmt.executeQuery("CALL `auth_customer`('"+mobile+"', '"+password+"');");
            
            return rs.next();
        } catch(SQLException e) {
            System.err.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public List<Driver> getDriversByTypeId(int typeId) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("CALL `get_drivers`();");

            List<Driver> drivers = new ArrayList<>();

            while (rs.next()) {
                Driver driver = new Driver(rs.getString("license_no"), rs.getString("license_expire_date"), rs.getString("nic"), rs.getInt("id"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email"), rs.getString("mobile"));
                drivers.add(driver);
            }
            
            return drivers;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
}
