package com.login_app.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.login_app.entities.Login;
import com.login_app.entities.Reg;
import com.login_app.repositories.LoginRepository;
import com.login_app.repositories.RegRepository;

@Service
public class DAOImpl implements DAO {

	@Autowired
	private LoginRepository loginRepo;

	@Autowired
	private RegRepository regRepo;

	@Override
	public void saveLogin(Login login) {
		loginRepo.save(login);
	}
	@Override
	public void saveReg(Reg reg) {
		regRepo.save(reg);
	}
	@Override
	public List<Reg> getAllReg() {
		List<Reg> regs = regRepo.findAll();
		return regs;
	}
	@Override
	public void deletOneReg(String email) {
		regRepo.deleteById(email);
		
	}
	@Override
	public Reg getOneReg(String email) {
		Optional<Reg> findById = regRepo.findById(email);
		Reg reg = findById.get();
		return reg;
	}
	

}
