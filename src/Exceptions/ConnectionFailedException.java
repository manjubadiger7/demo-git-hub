package Exceptions;

public class ConnectionFailedException extends Exception {

	public ConnectionFailedException() {
		super();
	}

	public ConnectionFailedException(String message) {
		super(message);

	}

	public ConnectionFailedException(Throwable cuase) {
		super(cuase);
	}

	public ConnectionFailedException(String message, Throwable cuase) {
		super(message, cuase);
	}
}
