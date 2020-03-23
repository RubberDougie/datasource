package datasource;

public interface DataSource {

	String SOURCE_TYPE = "";

	// WIP
	public default <E> boolean processData(E data) {
		return true;
	}
}
