package entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class rowmapperinlogin implements RowMapper<uservalue>  {

	@Override
	public uservalue mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		uservalue user=new uservalue();
		
		user.setId(rs.getInt(1));
		user.setUser_name(rs.getString(2));
		
		user.setUse_email(rs.getString(3));
		user.setUser_passwared(rs.getString(4));
		user.setRole(rs.getString(5));
		return user;
	}
	
}
