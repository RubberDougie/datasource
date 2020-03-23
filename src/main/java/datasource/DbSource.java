package datasource;

public abstract class DbSource {
	// WIP
	public DbSource(String... args) {
	}

	protected abstract Object queryDB(String[] args) throws Exception;
}
