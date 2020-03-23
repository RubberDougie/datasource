package dataprocessor;

import static datasource.DataSourceSelector.dataSourceSelector;

import datasource.DataSource;

public class DataProcessor {

	public static void main(String[] args) {
		String sampleSelector = "MYSQL SOURCE";
		DataSource dataSource = dataSourceSelector(sampleSelector);
		System.out.println(dataSource.processData(""));
	}
}
