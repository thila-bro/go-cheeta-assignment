/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

/**
 *
 * @author thilanmaduranga
 */
public class PriceCalculation {
    public double vehiclePriceCalculation(double initialCost, double ratePerKm, double distance) {
        return initialCost + (ratePerKm * distance);
    }
}
