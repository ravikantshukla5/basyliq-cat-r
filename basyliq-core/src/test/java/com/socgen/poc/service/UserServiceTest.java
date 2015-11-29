/*package com.socgen.poc.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;

import com.socgen.poc.dao.UserDao;
import com.socgen.poc.entity.User;
import com.socgen.poc.exception.HMSException;
import com.socgen.poc.service.impl.UserServiceImpl;

public class UserServiceTest extends AbstractTestContextLoader{
	public static final String USER_ID = "arun";
	@InjectMocks
	private UserServiceImpl userService;
	@Mock
	private UserDao userDao;
	
	@Before
	public void initMocks(){
		MockitoAnnotations.initMocks(this);
	}
	
	@Test
    public void getUserDetailsBasedOnUserId() throws HMSException {
    	User user = new User();
    	user.setUserId("arun");
    	// specify a condition and a return value for this condition.
    	Mockito.when(userDao.getUser(USER_ID)).thenReturn(user);
    	//call testing method
    	User returnedUser = userService.getUserDetails(USER_ID);
    	assertEquals(USER_ID, returnedUser.getUserId());
    	
    	return;
    }
	@Test
	public void addUser() throws HMSException{
		User user = new User();
    	user.setUserId("ravi");
    	user.setDesignation("Administrator");
    	user.setId(2l);
    	user.setName("Ravi Kant");
    	// specify a condition and a return value for this condition.
    	//Mockito.doReturn(user).when(userDao).create(user);
    	
    	userService.addUser(user);
    	
    	assertNotNull(user.getId());
	  	
	}
	@Test
	public void getAllUsers() throws HMSException {
		List<User> users = new ArrayList<User>();
		User user = new User();
    	user.setUserId("ravi");
    	user.setDesignation("Administrator");
    	user.setId(2l);
    	user.setName("Ravi Kant");
    	
    	users.add(user);
    	Mockito.when(userDao.get()).thenReturn(users);
    	
    	List<User> actualUsers = userService.getUsers();
    	
    	assertFalse(actualUsers.isEmpty());
	}
	
	

}
*/