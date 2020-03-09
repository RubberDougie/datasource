package datasource;

public class DataSourceSelector {
	public static DataSource dataSourceSelector(String sourceType) {
		DataSource dataSource = null;
		switch (sourceType) {
		case "CONSOLE INPUT": {
			dataSource = new ConsoleInput();
			break;
		}
		case "SQL SOURCE": {
			dataSource = new SqlSource();
			break;
		}
		case "MYSQL SOURCE": {
			dataSource = new MySqlSource();
			break;
		}
		case "FILE SOURCE": {
			dataSource = new FileSource();
			break;
		}
		case "DISTRIBUTED FILE SOURCE": {
			dataSource = new DistributedFileSource();
			break;
		}
		default: {
			System.exit(1);
		}
		}

		return dataSource;
	}
}
