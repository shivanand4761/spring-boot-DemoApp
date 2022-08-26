package com.login_app.services;

import java.util.List;

import com.login_app.entities.Login;
import com.login_app.entities.Reg;

public interface DAO {
	
	public void saveLogin(Login login);

	public void saveReg(Reg reg);

	public List<Reg> getAllReg();

	public void deletOneReg(String email);

	public Reg getOneReg(String email);

}
