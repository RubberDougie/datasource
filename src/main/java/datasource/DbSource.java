package datasource;

public abstract class DbSource {
	// WIP
	public DbSource(String... args) {
	}

	abstract public Object queryDB(String[] args);
}
