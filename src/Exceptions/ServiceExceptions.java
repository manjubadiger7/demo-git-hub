package Exceptions;

public class ServiceExceptions extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public ServiceExceptions() {
		super();
	}

	public ServiceExceptions(String message) {
		super(message);

	}

	public ServiceExceptions(Throwable cuase) {
		super(cuase);
	}

	public ServiceExceptions(String message, Throwable cuase) {
		super(message, cuase);
	}

}
