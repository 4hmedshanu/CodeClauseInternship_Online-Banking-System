package online_banking_system_mycontroller;





import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import entity.rowmapperinaccount;
import entity.rowmapperinlogin;
import entity.rowmapperintransaction;
import entity.uservalue;

@Repository
public class databasework {

	@Autowired
	private JdbcTemplate jdbc;

	public JdbcTemplate getJdbc() {
		return jdbc;
	}

	public void setJdbc(JdbcTemplate jdbc) {
		this.jdbc = jdbc;
	}
	
	public int adddataregister(uservalue value) {
		String qu="INSERT INTO users (name, email,password,role)  VALUES  (?,?,?,?);";
		String name=value.getUser_name()+" "+value.getUser_lestname();
		int nu=jdbc.update(qu,name,value.getUse_email(),value.getUser_passwared(),value.getRole());
		return nu;
	}
	
	public int adddnewaccount(uservalue value) {
		String qu="INSERT INTO account (user_id , account_number, account_type, ifsc_code, branch_name, balance) VALUES (?,?,?,?,?,?);";
		int nu=jdbc.update(qu,value.getId(), value.getAcoountnumber(), value.getAccount_type(), value.getIfc_code(), value.getBranch_Name(), value.getBalance());
		return nu;
	}
	
	
	public uservalue login(uservalue value) {
		String qu="select * from users where email=? and password=? ;";
		RowMapper<uservalue> row=new rowmapperinlogin();
		uservalue data=jdbc.queryForObject(qu, row,value.getUse_email(),value.getUser_passwared());
		System.out.println(data);
		return data;
		
	}
	
	
	public uservalue fatch_data(int id) {
		String qu="select * from users where user_id=?;";
		RowMapper<uservalue> row=new rowmapperinlogin();
		uservalue data=jdbc.queryForObject(qu, row,id);
		return data;
		
	}
	
	public List<uservalue> accountfatch_data(int id){
		String qu="select * from account where user_id=?";
		RowMapper<uservalue> row=new rowmapperinaccount();
		List<uservalue> data=jdbc.query(qu, row,id);
		return data;
	}
	
	
	public List<uservalue> transaction(){
		String qu="select * from transaction ; ";
		RowMapper<uservalue> row=new rowmapperintransaction();
		List<uservalue> data=jdbc.query(qu, row);
		return data;
	}
	
	
	
	public int fundtracsfers(uservalue value) {
		String qu="INSERT INTO transaction ( sender_account_id, amount, transaction_type, receiver_account_name, receiver_account_number, ifc, description , avilable_balace) VALUES (?,?,?,?,?,?,?,? )";
		int nu=jdbc.update(qu,value.getSender_account_id(),value.getBalance(),value.getAccount_type(),value.getReceiver_Account_Name(),value.getRecipient_Account_Numbe(), value.getIfc_code(), value.getDescription(),value.getAvilable());
		return nu;
	}
	
	
	public int modifyaccount(int id, int blace) {
		String qu="UPDATE account SET balance=? WHERE account_id=? ";
		int nu=jdbc.update(qu,blace,id);
		return nu;
	}
	
	public int changepassword(uservalue value) {
		String qu="UPDATE users SET password = ?  WHERE password=? And user_id=?"; 
		int n=jdbc.update(qu,value.getNew_password(), value.getUser_passwared(), value.getId());
		return n;
	}
	
	
	public int changeprofile(uservalue value) {
		String qu="UPDATE users SET name=? ,email=? , role=?   WHERE  user_id=?"; 
		int n=jdbc.update(qu,value.getUser_name(), value.getUse_email(), value.getRole() , value.getId());
		return n;
	}
	
	
	
	
	
	
}
