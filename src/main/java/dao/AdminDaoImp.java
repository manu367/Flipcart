package dao;
import databases.ConnectionProvider;
import entity.Admin;
import helpers.Message;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDaoImp implements  AdminDao
{
    public Message login(Admin admin)
    {
        try {
            Connection connection =ConnectionProvider.getConnection();

            PreparedStatement ps = connection.prepareStatement("SELECT * FROM admin WHERE email=? AND password=?");
            ps.setString(1, admin.getEmail());
            ps.setString(2, admin.getPassword());
            ResultSet rs = ps.executeQuery();

            if(rs.next()) {
                String status = rs.getString("status");
                String name = rs.getString("name");
                String usertype = rs.getString("usertype");

                if (status.equalsIgnoreCase("active"))
                {
                 return new Message("Success"+"/"+name+"/"+usertype, "alert-success");
                }
                else
                {
                 return  new Message("Inactive user", "alert-danger");

                }
            }
            else
                {
                    return  new Message("Invalid crenditials", "alert-danger");
                            }


        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
return  null;
    }



    public String register(Admin admin) {
        return null;
    }

    public String forgetPass(Admin admin) {
        return null;
    }

    public String changePass(Admin admin) {
        return null;
    }
}
