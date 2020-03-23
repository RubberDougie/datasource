package datasource;

import java.sql.SQLException;

public class SqlSource extends DbSource implements DataSource {
	public static final String SOURCE_TYPE = "SQL SOURCE";

	public SqlSource(String... args) {

	}

	// WIP
	@Override
	protected Object queryDB(String[] args) throws SQLException {
		return new Object();
	}
}
