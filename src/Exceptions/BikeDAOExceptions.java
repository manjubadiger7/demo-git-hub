package Exceptions;

public class BikeDAOExceptions extends Exception {

	public BikeDAOExceptions() {
		super();
	}

	public BikeDAOExceptions(String message) {
		super(message);

	}

	public BikeDAOExceptions(Throwable cuase) {
		super(cuase);
	}

	public BikeDAOExceptions(String message, Throwable cuase) {
		super(message, cuase);
	}
}
