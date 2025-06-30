package entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class rowmapperintransaction implements RowMapper<uservalue> {

	@Override
	public uservalue mapRow(ResultSet rs, int rowNum) throws SQLException {
		uservalue ele=new uservalue();
		ele.setId(rs.getInt(1));
		ele.setSender_account_id(rs.getInt(2));
		ele.setAvilable(rs.getInt(3));
		ele.setBalance(rs.getInt(4));
		ele.setAccount_type(rs.getString(5));
		ele.setDate(rs.getString(6));
		ele.setReceiver_Account_Name(rs.getString(7));
		ele.setRecipient_Account_Numbe(rs.getLong(8));
		ele.setIfc_code(rs.getString(9));
		ele.setDescription(rs.getString(10));
		return ele;
	}
	
		
}
