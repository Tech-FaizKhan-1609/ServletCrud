package com.hrms.service;

import java.util.List;

import com.hrms.dao.RegisterDaoImpl;
import com.hrms.model.RegisterModel;

public class UserServiceImpl implements UserService{

	@Override
	public int registerUser(RegisterModel model) {
		// TODO Auto-generated method stub
		RegisterDaoImpl dao = new RegisterDaoImpl();
		
		return dao.registerUser(model);
	}

	@Override
	public List<RegisterModel> listOfRecors() {
		RegisterDaoImpl dao = new RegisterDaoImpl();
		// TODO Auto-generated method stub
		 return dao.listOfRecors();
	}
	

}
