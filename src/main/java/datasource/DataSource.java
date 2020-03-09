package datasource;

public interface DataSource {

	default <E> Object doStuff(E test) {
		return test;
	}

}
