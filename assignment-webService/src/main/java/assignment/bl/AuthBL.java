/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import com.google.common.hash.Hashing;
import java.nio.charset.StandardCharsets;

/**
 *
 * @author thilanmaduranga
 */
public class AuthBL {
    public static String generateSha256(String password, String email){
        String plainText = email + "GoCheeta" + password + "Auth";
        return Hashing.sha256()
                .hashString(plainText, StandardCharsets.UTF_8)
                .toString();
    }
}
