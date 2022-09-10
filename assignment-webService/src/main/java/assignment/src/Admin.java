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
    private int branchId;
    private boolean isSuper = false;
    private String password;

    public Admin(int branchId, String password, int id, String firstName, String lastName, String email, String mobile) {
        super(id, firstName, lastName, email, mobile);
        this.branchId = branchId;
        this.password = password;
    }

    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
    }

    public boolean isIsSuper() {
        return isSuper;
    }

    public void setIsSuper(boolean isSuper) {
        this.isSuper = isSuper;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
