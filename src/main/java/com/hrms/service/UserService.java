package com.hrms.service;

import java.util.List;

import com.hrms.model.RegisterModel;

public interface UserService {
	int registerUser(RegisterModel model);
	List<RegisterModel> listOfRecors();
}
