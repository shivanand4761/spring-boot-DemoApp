package com.login_app.controller;

import java.util.List;

import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.login_app.entities.Reg;
import com.login_app.services.DAO;

@Controller
@Table(name = "login")
public class LoginController {
	
	@Autowired
	private DAO dao;
	
	@RequestMapping("/reg")
	public String newRegistration() {
		return "NewRegistration";	
	}
	@RequestMapping("/savereg")
	public String saveRegistration(@ModelAttribute()Reg reg,ModelMap model) {
		dao.saveReg(reg);
		model.addAttribute("msg", "Your Record Is Saved!!!");
		return "NewRegistration";	
	}
	@RequestMapping("/listall")
	public String listAllReg(ModelMap model) {
		List<Reg> allReg = dao.getAllReg();
		model.addAttribute("regs", allReg);
		return "results";	
	}
	@RequestMapping("/delete")
	public String deleteReg(@RequestParam("email") String email, ModelMap model) {
		dao.deletOneReg(email);
		List<Reg> allReg = dao.getAllReg();
		model.addAttribute("regs", allReg);
		return "results";
	}
	@RequestMapping("/getRegInfo")
	public String getRegInfo(@RequestParam("email") String email, ModelMap model) {
		Reg reg = dao.getOneReg(email);
		model.addAttribute("reg", reg);
		return "update_reg";
	}
}
