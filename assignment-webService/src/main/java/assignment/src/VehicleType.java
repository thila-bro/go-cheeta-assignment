/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.src;

/**
 *
 * @author thilanmaduranga
 */
public class VehicleType {
    private int vehilceTypeId;
    private String vehicleType;

    public VehicleType(int vehilceTypeId, String vehicleType) {
        this.vehilceTypeId = vehilceTypeId;
        this.vehicleType = vehicleType;
    }

    public int getVehilceTypeId() {
        return vehilceTypeId;
    }

    public void setVehilceTypeId(int vehilceTypeId) {
        this.vehilceTypeId = vehilceTypeId;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }
}
