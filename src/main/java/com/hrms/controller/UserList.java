package com.hrms.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrms.model.RegisterModel;
import com.hrms.service.UserService;
import com.hrms.service.UserServiceImpl;

@WebServlet("/userList")
public class UserList extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserService userService = new UserServiceImpl();
		List<RegisterModel> listOfRecors = userService.listOfRecors();
        System.out.println(listOfRecors);
        req.setAttribute("user", listOfRecors);
        req.getRequestDispatcher("userList.jsp").forward(req, resp);
	}
}
