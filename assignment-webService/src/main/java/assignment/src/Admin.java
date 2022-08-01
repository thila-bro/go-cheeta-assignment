/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.src;

/**
 *
 * @author thilan
 */
public class Admin extends Person {
    private boolean isSuper;    

    public Admin(boolean isSuper, int id, String firstName, String lastName, String email, String mobile) {
        super(id, firstName, lastName, email, mobile);
        this.isSuper = isSuper;
    }

    public boolean isIsSuper() {
        return isSuper;
    }

    public void setIsSuper(boolean isSuper) {
        this.isSuper = isSuper;
    }
}
