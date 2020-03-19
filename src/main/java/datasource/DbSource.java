package datasource;

public abstract class DbSource {
	// WIP
	public DbSource(String... args) {
	}

	public abstract Object queryDB(String[] args);
}
