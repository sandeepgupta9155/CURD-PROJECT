package com.sandeep.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.sandeep.model.Employe;

public class EmployeRowMapper implements RowMapper<Employe> {

	@Override
	public Employe mapRow(ResultSet rs, int rowNum) throws SQLException {
		Employe emp = new Employe();
		emp.setId(rs.getLong("empl_id"));
		emp.setName(rs.getString("empl_name"));
		emp.setEmail(rs.getString("empl_email"));
		emp.setAddress(rs.getString("empl_address"));
		emp.setSalary(rs.getDouble("empl_salary"));
		return emp;
	}
	

}
