package datasource;

public interface DataSource {

	String SOURCE_TYPE = "";

	default <E> boolean processData(E data) {
		return true;
	}

}
