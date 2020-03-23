package datasource;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.RowSet;

import com.sun.rowset.CachedRowSetImpl;

// code adapted from https://www.tutorialspoint.com/jdbc/jdbc-create-database.htm

public class MySqlSource extends SqlSource implements DataSource {
	// JDBC driver name and database URL
	static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost/hosp";

	// Database credentials
	static final String USER = "newuser1";
	static final String PASS = "Abcdefg1";

	public static final String SOURCE_TYPE = "MYSQL SOURCE";

	public MySqlSource(String... args) {
		this.args = args;
	}

	// @WIP ; hardcoded in a single search statement for testingk will use the class
	// member args
	@Override
	public <E> boolean processData(E Data) {
		Connection conn = null;
		Statement stmt = null;
		try {
			// STEP 2: Register JDBC driver. Optional step, should remove. keeping for
			// reference
			Class.forName(JDBC_DRIVER);

			// STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			// STEP 4: Execute a query
			System.out.println("Creating statement...");
			stmt = conn.createStatement();
			String sql;
			sql = "SELECT M.FullName, M.Manufacturer, PM.SID AS PrescribingDoctor, PM.Dosage, PM.Frequency, PM.AdministrationRoute FROM Medication M, PatientMedication PM WHERE PM.PID = 11 AND PM.MID = M.MID";
			ResultSet rs = stmt.executeQuery(sql);

			// STEP 5: Extract data from result set
			while (rs.next()) {
				// Retrieve by column name
				String col1 = rs.getString("FullName");
				String col2 = rs.getString("Manufacturer");
				String col3 = rs.getString("PrescribingDoctor");
				String col4 = rs.getString("Dosage");
				String col5 = rs.getString("AdministrationRoute");

				// Display values
				System.out.print("Medication Full Name: \"" + col1 + "\"");
				System.out.print(", Manufacturer: \"" + col2 + "\"");
				System.out.print(", Prescribing Doctor: \"" + col3 + "\"");
				System.out.print(", Frequency: \"" + col4 + "\"");
				System.out.println(", Administration Route: \"" + col5 + "\"");
			}
			// STEP 6: Clean-up environment
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (SQLException se2) {
			} // nothing we can do
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try
		System.out.println("Goodbye!");

		/*
		 * try { queryDB(args); } catch (SQLException e) { // TODO Auto-generated catch
		 * block e.printStackTrace(); System.exit(1); // @WIP }
		 */
		return true; // @WIP
	}

	// WIP
	@Override
	protected RowSet queryDB(String[] args) throws SQLException {
		System.out.println("MySQL");
		return new CachedRowSetImpl();
	}

	private String[] args;
}
