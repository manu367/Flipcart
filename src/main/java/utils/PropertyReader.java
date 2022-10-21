package utils;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

public class PropertyReader {

    private static Properties envProperties = new Properties();
    
    private static Properties configProperties = new Properties();
  

    static {
    	
        try {

           // InputStream envStream = PropertyReader.class.getClassLoader().getResourceAsStream("environment.properties");

            InputStream envStream = new FileInputStream("D:\\class resurses\\Flipcart-18-10-22\\Flipcart\\src\\main\\resources\\environment.properties");
        	
            envProperties.load(envStream);

            
            String configFile = "D:\\class resurses\\Flipcart-18-10-22\\Flipcart\\src\\main\\resources\\" + envProperties.getProperty("env")+ "-config.properties";
          
            InputStream configStream = new FileInputStream(configFile);  
            configProperties.load(configStream);
           
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getConfigProperty(String key) {
        return configProperties.getProperty(key);
    }

    public static void main(String[] args) {
        try{
            Class.forName("PropertyReader");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}