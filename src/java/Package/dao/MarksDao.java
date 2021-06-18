/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Package.dao;

import Package.entites.Mark;
import Package.entites.User;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Adminpc
 */
public class MarksDao {
    public Connection con;

    public MarksDao(Connection con) {
        this.con = con;
    }
    
    //attemptId  user_fk  subject result
    public boolean saveMarks(int result , String subjects , int id)
    {
        boolean  status = false;
        try{
            String query = "insert into marks(user_fk ,subject,result) values(?,?,?)";
            PreparedStatement ptst =  con.prepareStatement(query);
            ptst.setInt(1,id);
            ptst.setString(2,subjects);
            ptst.setInt(3,result);
            ptst.executeUpdate();
            
            status = true;
        }
       catch (Exception ex) {
           ex.printStackTrace();
        }
        return status;
                
    }
    
}
