package databases;

import utils.PropertyReader;

import java.sql.Connection;
import java.sql.DriverManager;


public final class ConnectionProvider {

	private ConnectionProvider() {

	}

	public static Connection connection = null;

	public synchronized static Connection getConnection() {
		if (connection == null) {
			try {
				Class.forName(PropertyReader.getConfigProperty("db.driver"));
				connection = DriverManager.getConnection(PropertyReader.getConfigProperty("db.url"), PropertyReader.getConfigProperty("db.username"), PropertyReader.getConfigProperty("db.password"));
				return connection;
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			return connection;
		}
		return connection;

	}


	
}

