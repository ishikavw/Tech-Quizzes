/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Package.entites;
import java.sql.*;
/**
 *
 * @author Adminpc
 */
public class User {
    
    private int Id;
    private String firstname;
    private String lastname;
    private String username;
    private String password;
    private String email;
    private String code;

    public User(String email, String code) {
        this.email = email;
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
    public User() {
    }

    public User( String firstname, String lastname, String password) {
      
        this.firstname = firstname;
        this.lastname = lastname;
        this.password = password;
    }

    public User(String firstname, String lastname, String username, String password, String email) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.username = username;
        this.password = password;
        this.email = email;
    }
    
    public User(int Id, String firstname, String lastname, String username, String password, String email) {
        this.Id = Id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.username = username;
        this.password = password;
        this.email = email;
    }
    

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
    // public String getProfile() {
     //   return profile;
    //}

    //public void setProfile(String profile) {
    //    this.profile = profile;
    //}
}
