package com.sandeep.dao;

import java.util.List;
import static com.sandeep.constant.Constant.*;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.sandeep.model.Employe;

public class EmployeDaoImpl extends JdbcDaoSupport implements EmployeDao {

	private RowMapper<Employe> rowMapper;
	
	public void setRowMapper(RowMapper<Employe> rowMapper) {
		this.rowMapper = rowMapper;
	}
	
	@Override
	public List<Employe> getAllEmployes() {
		return getJdbcTemplate().query(GET_ALL, rowMapper);
	}

	@Override
	public Employe getAllEmployes(Long id) {
		List<Employe> emps = getJdbcTemplate().query(GET_ONE, rowMapper, id);
		return emps.get(0);
	}

	@Override
	public void saveEmploye(Employe emp) {
		getJdbcTemplate().update(INSERT,emp.getName(), emp.getEmail(), emp.getAddress(),emp.getSalary());
	}

	@Override
	public void updateEmploye(Employe emp) {
		getJdbcTemplate().update(UPDATE,emp.getName(),emp.getEmail(),emp.getAddress(), emp.getSalary(), emp.getId());
	}

	@Override
	public void deleteEmploye(Long id) {
		getJdbcTemplate().update(DELETE, id);
		
	}

	

	
		
	

	
	
	
}
