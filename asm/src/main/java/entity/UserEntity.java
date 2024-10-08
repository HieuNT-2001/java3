package entity;

public class UserEntity {

	private int id;
	private String name;
	private String email;
	private int type;

	public UserEntity() {
		super();
	}

	public UserEntity(int id, String name, String email, int type) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.type = type;
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

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

}
