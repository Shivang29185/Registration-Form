package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeDao;
import com.model.Employee;

@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Employee employee = new Employee();
		EmployeeDao employeeDao = new EmployeeDao();

		employee.setFirstName(request.getParameter("firstName"));
		employee.setLastName(request.getParameter("lastName"));
		employee.setUserName(request.getParameter("username"));
		employee.setPassword(request.getParameter("password"));
		employee.setAddress(request.getParameter("address"));
		employee.setContact(request.getParameter("contact"));

		try {
			employeeDao.insert(employee);
			request.setAttribute("data", employee);
			request.getRequestDispatcher("display_employee.jsp").forward(request, response);
		} catch (Exception e) {
			System.out.println("Error:" + e );
			e.printStackTrace();
		}

		System.out.println("Firstname:" + employee.getFirstName()); // Printing data at console
		System.out.println("Lastname:" + employee.getLastName());
		System.out.println("Uname:" + employee.getUserName());
		System.out.println("password:" + employee.getPassword());
		System.out.println("Address:" + employee.getAddress());
		System.out.println("Contact:" + employee.getContact());
	}

}