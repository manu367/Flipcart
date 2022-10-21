package validation;

import entity.Admin;
import helpers.Message;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

public class ValidateAdminRequest {

    public static  List<Message> validate(HttpServletRequest request) {
        List<Message> list = new ArrayList<Message>();

        Admin admin=new Admin();

        Enumeration en=request.getParameterNames();


        while(en.hasMoreElements())
        {
            Object objOri=en.nextElement();
            String param=(String)objOri;
            String value=request.getParameter(param);
             if(param.equalsIgnoreCase("name"))
             {
               admin.setName(value);
             }
             else if(param.equalsIgnoreCase("email"))
             {
                 admin.setEmail(value);
             }

             else if(param.equalsIgnoreCase("mobile"))
             {
                 admin.setMobile(value);
             }
             else if(param.equalsIgnoreCase("password"))
             {
                 admin.setPassword(value);
             }
        }

        if(!Validation.isNotNull(admin.getName()))
            list.add(new Message("Name Can't be Blank", "alert-danger"));
        else if(!Validation.UserNameHaveSpace(admin.getName()))
            list.add(new Message("Space Not Allowed", "alert-danger"));
        else if(!Validation.validatePassword(admin.getPassword()))
            list.add(new Message("Passprd length must be greter than 3", "alert-danger"));
        return list;

    }
     }


