package com.sandeep.dao;

import java.util.List;

import com.sandeep.model.Employe;

public interface EmployeDao {
	List<Employe> getAllEmployes();

	Employe getAllEmployes(Long id);

	void saveEmploye(Employe emp);

	void updateEmploye(Employe emp);

	void deleteEmploye(Long id);

}
