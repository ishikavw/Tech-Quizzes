/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Package.entites;

/**
 *
 * @author Adminpc
 */
public class Admin {
    
    
    private String Username;
    private String password;
    
    public Admin( String Username ,String password) {
        this.password = password;
        this.Username = Username;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
