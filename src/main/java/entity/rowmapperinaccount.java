package entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class rowmapperinaccount implements RowMapper<uservalue> {

	@Override
	public uservalue mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		
		uservalue data=new uservalue();
		data.setSender_account_id(rs.getInt(1));
		data.setId(rs.getInt(2));
		data.setAcoountnumber(rs.getLong(3));
		data.setAccount_type(rs.getString(4));
		data.setIfc_code(rs.getString(5));
		data.setBranch_Name(rs.getString(6));
		data.setBalance(rs.getInt(7));
		
		return data;
	}

	
	
}
