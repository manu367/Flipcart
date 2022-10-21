package dao;
import entity.Admin;
import helpers.Message;

public interface AdminDao
{
    public Message login(Admin admin);
    public String register(Admin admin);
    public String forgetPass(Admin admin);
    public String changePass(Admin admin);

}
