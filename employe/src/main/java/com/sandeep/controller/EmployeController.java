package com.sandeep.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.support.AbstractMultipartHttpServletRequest;

import com.sandeep.dao.EmployeDao;
import com.sandeep.model.Employe;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class EmployeController {

	@Autowired
	private EmployeDao employeDao;

	@RequestMapping("/getALLEmployes")
	public String getAllEmployes(Model model) {
		List<Employe> emps = employeDao.getAllEmployes();
		model.addAttribute("emps", emps);
		return "show_employees";
	}

	@RequestMapping("/addEmployes")
	public String addEmploye(Model model) {
		model.addAttribute("emps", new Employe());
		return "add_employees";
	}

	@RequestMapping("/saveEmploye")
	public String saveEmploye(@ModelAttribute Employe emp) {
		employeDao.saveEmploye(emp);
		return "redirect:/getALLEmployes";
	}

	@RequestMapping("/deleteEmploye")
	public String deleteEmploye(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");

		employeDao.deleteEmploye(Long.valueOf(id));

		return "redirect:/getALLEmployes";
	}

	@RequestMapping("/editEmploye")
	public String editEmployee(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		Employe emp = employeDao.getAllEmployes(Long.valueOf(id));
		model.addAttribute("emp", emp);
		return "update_employees";

	}

	@RequestMapping("/updateEmploye")
	public String updateEmploye(HttpServletRequest request) {
		String id = request.getParameter("Id");
		String name = request.getParameter("Name");
		String email = request.getParameter("Email");
		String address = request.getParameter("Address");
		String salary = request.getParameter("Salary");
		Employe emp = new Employe(Long.valueOf(id), name, email, address, Double.valueOf(salary));
		employeDao.updateEmploye(emp);

		return "redirect:/getALLEmployes";
	}

}
