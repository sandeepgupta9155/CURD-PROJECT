package com.sandeep.constant;

public class Constant {
	public static final String GET_ONE="select * from employee where empl_id=?";
	public static final String GET_ALL="select * from employee";
	public static final String INSERT="insert into employee(empl_name, empl_email, empl_address, empl_salary) values(?,?,?,?)";
	public static String DELETE= "delete from employee where empl_id=?";
	public static String UPDATE="update employee set empl_name=?, empl_email=?, empl_address=?, empl_salary=? where empl_id=?";
	
}
