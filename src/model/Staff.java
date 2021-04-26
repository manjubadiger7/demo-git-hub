package model;

public class Staff {
	private int id;
	private String name;
	private String email;
	private String age;
	private String city;
	private String state;
	private String country;
	private String zipcode;
	private String userName;
	private String password;

	public Staff() {
		super();
	}

	public Staff(String name, String email, String age, String city, String state, String country, String zipcode,
			String userName, String password) {
		super();
		this.name = name;
		this.email = email;
		this.age = age;
		this.city = city;
		this.state = state;
		this.country = country;
		this.zipcode = zipcode;
		this.userName = userName;
		this.password = password;
	}

	public Staff(int id, String name, String email, String age, String city, String state, String country,
			String zipcode, String userName, String password) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.age = age;
		this.city = city;
		this.state = state;
		this.country = country;
		this.zipcode = zipcode;
		this.userName = userName;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
