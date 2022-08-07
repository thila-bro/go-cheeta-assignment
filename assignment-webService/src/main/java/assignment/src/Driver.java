/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.src;

/**
 *
 * @author thilan
 */
public class Driver extends Person {
    private String licenseId;
    private String licenseExpireDate;
    private String nationalId;

    public Driver(String licenseId, String licenseExpireDate, String nationalId, int id, String firstName, String lastName, String email, String mobile) {
        super(id, firstName, lastName, email, mobile);
        this.licenseId = licenseId;
        this.licenseExpireDate = licenseExpireDate;
        this.nationalId = nationalId;
    }

    public String getLicenseId() {
        return licenseId;
    }

    public void setLicenseId(String licenseId) {
        this.licenseId = licenseId;
    }

    public String getLicenseExpireDate() {
        return licenseExpireDate;
    }

    public void setLicenseExpireDate(String licenseExpireDate) {
        this.licenseExpireDate = licenseExpireDate;
    }

    public String getNationalId() {
        return nationalId;
    }

    public void setNationalId(String nationalId) {
        this.nationalId = nationalId;
    }
}
