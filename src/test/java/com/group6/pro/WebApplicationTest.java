package com.group6.pro;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.util.List;
import java.util.Set;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.jupiter.api.DisplayName;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.boot.test.mock.mockito.MockBean;

import com.group6.pro.model.Kitchens;
import com.group6.pro.model.Product;
import com.group6.pro.model.Role;
import com.group6.pro.model.User;
import com.group6.pro.repository.KitchensRepository;
import com.group6.pro.repository.ProductRepository;
import com.group6.pro.repository.RoleRepository;
import com.group6.pro.repository.ServiceProvierRepo;
import com.group6.pro.repository.UserRepository;
import com.group6.pro.service.ProductServiceImpl;
import com.group6.pro.service.UserService;
import com.group6.pro.service.UserServiceImpl;
import static org.mockito.Mockito.*;

@SpringBootTest
@RunWith(SpringJUnit4ClassRunner.class)
public class WebApplicationTest {

	@Mock 
	KitchensRepository kitchenRepo;
	
	@Mock 
	ProductRepository productRepo;
	
	@Mock
	private ProductServiceImpl ps;
	
	@Mock 
	UserRepository userRepo;
		
	
	 @Test
		public void contextLoads() {
		}
	 
	 @Before
	    public void  setUp() throws Exception {
	    	MockitoAnnotations.initMocks(this);
	       
	    }
	 	@Test
	 	public void testFindByKitchenName() {
	 		Kitchens kitchentoReturn=new Kitchens();
	 		kitchentoReturn.setKitchenName("Green Pear");
	 		when(kitchenRepo.findByKitchenName("Green Pear")).thenReturn(kitchentoReturn);
	 		assertEquals(kitchentoReturn,kitchenRepo.findByKitchenName("Green Pear"));
	 	}
	 	
	 	@Test 
	 	public void testFindByUsername() {
	 		User userToReturn=new User();
	 		userToReturn.setUsername("gozdealdemir");
	 		when(userRepo.findByUsername("gozdealdemir")).thenReturn(userToReturn);
	 		assertEquals(userToReturn,userRepo.findByUsername("gozdealdemir"));
	 	}
	 	
	 	@Test
	 	public void testFindById() {
	 		Product productToReturn=new Product();
	 		productToReturn.setId(1L);
	 		when(ps.findById(1L)).thenReturn(productToReturn);
	 		assertEquals(productToReturn,ps.findById(1L));
	 		
	 	}
	 	

	 }









