/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

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
}
