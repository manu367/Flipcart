package filters;

import helpers.Message;
import validation.ValidateAdminRequest;
import validation.Validation;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class AdminRegisterFilter implements Filter
{

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {

        HttpServletResponse res=(HttpServletResponse) response;
        HttpServletRequest req=(HttpServletRequest) request;

        PrintWriter out = response.getWriter();

        List<Message> messages = ValidateAdminRequest.validate(req);

        

            if(messages.size()==0) {
                chain.doFilter(request, response);
            }

            else
                {
                    request.setAttribute("messageValidate",messages);
                    RequestDispatcher requestDispatcher=request.getRequestDispatcher("adminRegister.jsp");
                     requestDispatcher.forward(request,response);




            }
        }







    public void init(FilterConfig config) throws ServletException {

    }
    public void destroy() {
    }


}
