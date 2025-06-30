package entity;


public class uservalue {
	private long acoountnumber,Recipient_Account_Numbe;
	private int id,balance,account_id , avilable;
	private String user_name,user_lestname,use_email,user_passwared,role,account_type,Branch_Name,Ifc_code,Receiver_Account_Name,description, new_password ,date  ;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_lestname() {
		return user_lestname;
	}

	public void setUser_lestname(String user_lestname) {
		this.user_lestname = user_lestname;
	}

	public String getUse_email() {
		return use_email;
	}

	public void setUse_email(String use_email) {
		this.use_email = use_email;
	}

	public String getUser_passwared() {
		return user_passwared;
	}

	public void setUser_passwared(String user_passwared) {
		this.user_passwared = user_passwared;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	public String getAccount_type() {
		return account_type;
	}

	public void setAccount_type(String account_type) {
		this.account_type = account_type;
	}

	public String getBranch_Name() {
		return Branch_Name;
	}

	public void setBranch_Name(String branch_Name) {
		Branch_Name = branch_Name;
	}

	public String getIfc_code() {
		return Ifc_code;
	}

	public void setIfc_code(String ifc_code) {
		Ifc_code = ifc_code;
	}

	public long getAcoountnumber() {
		return acoountnumber;
	}

	public void setAcoountnumber(long acoountnumber) {
		this.acoountnumber = acoountnumber;
	}
	
	
	
	

	public long getRecipient_Account_Numbe() {
		return Recipient_Account_Numbe;
	}

	public void setRecipient_Account_Numbe(long recipient_Account_Numbe) {
		Recipient_Account_Numbe = recipient_Account_Numbe;
	}

	public int getSender_account_id() {
		return account_id;
	}

	public void setSender_account_id(int account_id) {
		this.account_id = account_id;
	}
	
	

	
	
	public int getAccount_id() {
		return account_id;
	}

	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}

	public String getReceiver_Account_Name() {
		return Receiver_Account_Name;
	}

	public void setReceiver_Account_Name(String receiver_Account_Name) {
		Receiver_Account_Name = receiver_Account_Name;
	}
	
	
	

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	

	public String getNew_password() {
		return new_password;
	}

	public void setNew_password(String new_password) {
		this.new_password = new_password;
	}
	
	
	
	
	
	
	
	

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getAvilable() {
		return avilable;
	}

	public void setAvilable(int avilable) {
		this.avilable = avilable;
	}
	
	



	@Override
	public String toString() {
		return "uservalue [acoountnumber=" + acoountnumber + ", Recipient_Account_Numbe=" + Recipient_Account_Numbe
				+ ", id=" + id + ", balance=" + balance + ", account_id=" + account_id + ", user_name=" + user_name
				+ ", user_lestname=" + user_lestname + ", use_email=" + use_email + ", user_passwared=" + user_passwared
				+ ", role=" + role + ", account_type=" + account_type + ", Branch_Name=" + Branch_Name + ", Ifc_code="
				+ Ifc_code + ", Receiver_Account_Name=" + Receiver_Account_Name + "]";
	}
	

	
	
	
	
	
	

	

	
	

	
	
	
	
	
}
