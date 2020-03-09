package datasource;

public interface DataSource {

	default <E> Object doStuff(E test) {
		return test;
	}

	default <E> boolean processData(E data) {
		return true;
	}
}
