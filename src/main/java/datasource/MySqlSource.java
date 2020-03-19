package datasource;

public class MySqlSource extends SqlSource implements DataSource {
	public static final String SOURCE_TYPE = "MYSQL SOURCE";

	public MySqlSource(String... args) {

	}

	// WIP
	@Override
	public Object queryDB(String[] args) {
		System.out.println("MySQL");
		return new Object();
	}
}
