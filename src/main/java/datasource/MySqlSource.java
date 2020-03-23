package datasource;

public class MySqlSource extends SqlSource implements DataSource {
	public static final String SOURCE_TYPE = "MYSQL SOURCE";

	public MySqlSource(String... args) {
		this.args = args;
	}

	// WIP
	@Override
	public <E> boolean processData(E Data) {
		queryDB(args);
		return true;
	}

	// WIP
	@Override
	protected Object queryDB(String[] args) {
		System.out.println("MySQL");
		return new Object();
	}

	private String[] args;
}
