package datasource;

public class SqlSource extends DbSource implements DataSource {
	public static final String SOURCE_TYPE = "SQL SOURCE";

	public SqlSource(String... args) {

	}

	// WIP
	@Override
	public Object queryDB(String[] args) {
		return new Object();
	}
}
