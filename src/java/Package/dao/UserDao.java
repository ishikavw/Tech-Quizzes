 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Package.dao;
import Package.entites.Mark;
import Package.entites.User;
import java.sql.*;
import java.util.Random;
import java.util.regex.Pattern;
/**
 *
 * @author Adminpc
 */
public class UserDao {
    
    public Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    //
    public boolean saveUser(User user)
    {
        //	Id	Username	First_name	Last_name	password	email	Mobile_no	
        boolean status = false;
        
        try{
            String query = "insert into form(Username,Firstname,Lastname,password,email,code) values(?,?,?,?,?,?)";
            PreparedStatement ptst =  con.prepareStatement(query);
            ptst.setString(1,user.getUsername());
            String C = uCode(user.getUsername());
            user.setCode(C);
            ptst.setString(2,user.getFirstname());
            ptst.setString(3,user.getLastname());
            ptst.setString(4,user.getPassword());
            ptst.setString(5,user.getEmail());
            ptst.setString(6, user.getCode());
            ptst.executeUpdate();
            //String query1 = "select * from form where Username = ? and password  = ? ";
            //PreparedStatement ps= con.prepareStatement(query);
            //ResultSet rs = ptst.executeQuery();
            //user.setId(rs.getInt("id"));
            status = true;
        }
       catch (Exception ex) {
           ex.printStackTrace();
        }
        return status;
    }
    public String uCode(String UserName)
    {
        
        String code ="null" ;
        int Un ='\0';
        Random num  = new Random();
        for(int i=0 ;i<1 ; i++)
        {
            Un = num.nextInt(1000);
        }
        code = Un+""+ UserName;
        return code;
        
    }
    public boolean  checkEmailCode(String mail , String code)
    {
        boolean status = false ;
        try
        {

            PreparedStatement ps =con.prepareStatement("select * from form where email = ? AND code = ?");  
            ps.setString(1,mail);
            ps.setString(2,code);
            ResultSet rs = ps.executeQuery();
            status = rs.next();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return status;
    }

    public boolean checkUser(String UserName)
    {
        boolean status = true;
        PreparedStatement ptst;
        ResultSet rs;
        String query = "select * from form where Username = ?";
        try{
            ptst =  con.prepareStatement(query);
             ptst.setString(1,UserName);
             rs = ptst.executeQuery();
             if(rs.next())
             {
               status = false;  
             }
        }
        catch (Exception ex) {
           ex.printStackTrace();
        }
        return status;
  
    }
    public int SetPassword(String mail ,String password)
    {
        int status = 0;
        try
        {
           
            PreparedStatement ps =con.prepareStatement("UPDATE form SET Password = ? WHERE Email= ?  ");
            ps.setString(1,password);
            ps.setString(2,mail); 
            status = ps.executeUpdate();  
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return status;
    
    }
    public boolean emailValidation(String email)
    {
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+
                            "[a-zA-Z0-9_+&*-]+)*@" +
                            "(?:[a-zA-Z0-9-]+\\.)+[a-z" +
                            "A-Z]{2,3}$";
        Pattern pat = Pattern.compile(emailRegex);
        if(pat.matcher(email).matches() == true )
        {
            return true;
        }
        return false;
    
    }
    public boolean checkEmail(String email)
    {
        boolean status = false;
        
        if(emailValidation(email))
        {
        
            PreparedStatement ptst;
            ResultSet rs;
            String query = "select * from form where email = ?";
            try
            {
                ptst =  con.prepareStatement(query);
                ptst.setString(1,email);
                rs = ptst.executeQuery();
                if(rs.next())
                {
                    return false;
                }
                status = true;
            }
            catch (Exception ex) 
            {
                ex.printStackTrace();
            }
        }
        return status;
    }
    public boolean checkPassword(String password)
    {
        boolean status = false;
        boolean digit = false;
        boolean lower = false;
        boolean upper = false;
        boolean specialCh = false;
        String special = "!@#$%^&*()_<>:|?.,;'";
        char c;
        if(password.length() < 6)
        {
            status = false;
        }
        else
        {
            for(int i = 0 ; i < password.length(); i++ )
            {
                c = password.charAt(i);
                if(Character.isDigit(c))
                {
                    digit = true;
                }
                else if(Character.isLowerCase(c))
                {
                    lower = true;
                }
                else if(Character.isUpperCase(c))
                {
                    upper = true;
                }
                else if(special.contains(Character.toString(c)))
                {
                    specialCh = true;
                }
                
            }
            if(digit == true && lower == true && upper == true && specialCh == true)
            {
                status = true;
            }
        }
        return status;
        
    }
    public User getbyUserName(String UserName)
    {
        User user = null;
        try{
            
            String query = "select * from form where Username = ? ";
            PreparedStatement ps= con.prepareStatement(query);
            ps.setString(1,UserName);
            ResultSet rs = ps.executeQuery();
            if(rs.next())
            {
               user = new User();
               String User_name = rs.getString("Username");
               user.setUsername(User_name);
               
               user.setId(rs.getInt("id"));
               user.setFirstname(rs.getString("Firstname"));
               user.setLastname(rs.getString("Lastname"));
               user.setEmail(rs.getString("email"));
               user.setPassword(rs.getString("password"));
               //user.setProfile(rs.getString("profile"));

            }
        }
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return user;
    }
    
    public User getUser(String UserName ,String password)
    {
        User user = null;
        try{
            
            String query = "select * from form where Username = ? and password  = ? ";
            PreparedStatement ps= con.prepareStatement(query);
            ps.setString(1,UserName);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            if(rs.next())
            {
               user = new User();
               String User_name = rs.getString("Username");
               user.setUsername(User_name);
               
               user.setId(rs.getInt("id"));
               user.setFirstname(rs.getString("Firstname"));
               user.setLastname(rs.getString("Lastname"));
               user.setEmail(rs.getString("email"));
               user.setPassword(rs.getString("password"));
               //user.setProfile(rs.getString("profile"));

            }
        }
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return user;
    }
    public User GetAllUser()
    {
        User user = null;
        try{
            
            String query = "select * from form ";
            PreparedStatement ps= con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
               user.setId(rs.getInt("id"));
               user.setEmail(rs.getString("email"));
               user.setPassword(rs.getString("password"));
            }
           
        }
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return user;
        
    }
    public boolean updateUser(User user)
    {
       boolean status = false;
        try{
            
            String query = "update form set Firstname = ? , Lastname = ? , password = ? where Username = ? ";
            PreparedStatement ps= con.prepareStatement(query);
            ps.setString(1,user.getFirstname());
            ps.setString(2,user.getLastname());
            ps.setString(3,user.getPassword());
            ps.setString(4,user.getUsername());
            ps.executeUpdate();
            status = true;
        }
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return status;
        
    }
    
}
