/*package com.socgen.poc.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.socgen.poc.entity.Role;
import com.socgen.poc.entity.User;
import com.socgen.poc.entity.UserAccount;
import com.socgen.poc.enums.RecordStatus;
import com.socgen.poc.enums.RoleType;
import com.socgen.poc.exception.HMSException;
import com.socgen.poc.service.UserAccountService;
import com.socgen.poc.service.UserService;
import com.socgen.poc.session.HMSSession;
import com.socgen.poc.validator.UserValidator;

@Controller
public class UserController {

	@Autowired
	HMSSession hmsSession;
	@Autowired
	UserService userService;
	@Autowired
	UserValidator userValidator;
	@Autowired
	UserAccountService userAccountService;
	
	@RequestMapping(value = "admManageUsers.action", method = RequestMethod.GET)
	public String showUserList(Model model, HttpServletRequest request) {
		String target = "usersGrid";
		if (request.getParameter("message") != null) {
			model.addAttribute("message", request.getParameter("message"));
		}
		try {
			List<User> users = userService.getUsers();
			if ((users != null) && (users.size() == 0)) {
				model.addAttribute("message", "No user found");
			} else {
				model.addAttribute("users", users);
			}
		} catch (HMSException e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return target;
	}
	
	@RequestMapping(value = "admUserForm.action", method = RequestMethod.GET)
	public String showUserForm(Model model, HttpServletRequest request) {
		String target = "userForm";
		User user = new User();
		if (request.getParameter("id") != null && !request.getParameter("id").equalsIgnoreCase("withoutId")) {
			try {
				user = userService.getUserDetails(request.getParameter("id"));
			} catch (HMSException e) {
				e.printStackTrace();
				model.addAttribute("message", e.getMessage());
			}
		}
		model.addAttribute("user", user);
		return target;
	}

	@RequestMapping(value = "admUserForm.action", method = RequestMethod.POST)
	public String submitUserForm(@ModelAttribute("user") User user,
			BindingResult errors, Model model) {
		String target = "redirect:homeGenerated.action";
		try {
			userValidator.validate(user, errors);
			if (errors.hasErrors()) {
				target = "userForm";
			} else {
				if (user.getId() == 0) {
					//create new account for user.
					userAccountService.createUserAccount(this.getDefaultUserAccount(user));
					userService.addUser(user);
					target = "redirect:admManageUsers.action";
					model.addAttribute("message","User added successfully");
				} else {
					userService.updateUser(user);
					target = "redirect:admManageUsers.action";
					model.addAttribute("message","User's details updated successfully");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
			target = "userForm";
		}
		return target;
	}
	
	private UserAccount getDefaultUserAccount(User user){
		UserAccount userAccount = new UserAccount();
		userAccount.setLoginId(user.getUserId());
		userAccount.setPassword(user.getUserId());
		userAccount.setAccountStatus(RecordStatus.ACTIVE);
		Set<Role> roles = new HashSet<Role>();
		Role role = new Role();
		role.setId(3);
		role.setName(RoleType.FRONT_DESK);
		roles.add(role);
		userAccount.setRoles(roles);
		return userAccount;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}
	
	public HMSSession getHmsSession() {
		return hmsSession;
	}

	public void setHmsSession(HMSSession hmsSession) {
		this.hmsSession = hmsSession;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public UserValidator getUserValidator() {
		return userValidator;
	}

	public void setUserValidator(UserValidator userValidator) {
		this.userValidator = userValidator;
	}
	
	
}
*/