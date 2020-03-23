package datasource;

public class DataSourceSelector {
	public static DataSource dataSourceSelector(String sourceType, String... args) {
		DataSource dataSource = null;
		switch (sourceType) {
		case "CONSOLE INPUT": {
			dataSource = new ConsoleInput(args);
			break;
		}
		case "SQL SOURCE": {
			dataSource = new SqlSource(args);
			break;
		}
		case "MYSQL SOURCE": {
			dataSource = new MySqlSource(args);
			break;
		}
		case "FILE SOURCE": {
			dataSource = new FileSource(args);
			break;
		}
		case "DISTRIBUTED FILE SOURCE": {
			dataSource = new DistributedFileSource(args);
			break;
		}
		default: {
			System.exit(1); // no valid selection
		}
		}

		return dataSource;
	}
}
