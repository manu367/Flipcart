package listeners;

import databases.DBInitializer;

import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


 
public class ContextLsitener implements ServletContextListener {
     public ContextLsitener() {
        // TODO Auto-generated constructor stub
    }

 
    public void contextDestroyed(ServletContextEvent sce)  { 
    	
    
    }

	 public void contextInitialized(ServletContextEvent contextEvent)  { 
         
		 ServletContext ctx=contextEvent.getServletContext();
			String param=ctx.getInitParameter("createTables");
			if (true)
			{
				System.out.println("creating tables...");
	            InputStream inputStream =ContextLsitener.class.getClassLoader().getResourceAsStream("tables.sql");
	            DBInitializer db=new DBInitializer();
			    db.createTables(inputStream);
				 
			}
		}

	
    
	
}
