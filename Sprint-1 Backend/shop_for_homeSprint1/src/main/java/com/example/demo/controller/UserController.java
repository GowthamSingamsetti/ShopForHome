package com.example.demo.controller;
import com.example.demo.entity.UserEntity;
import com.example.demo.service.UserService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController

public class UserController {

	@Autowired private UserService userService;

	@PostMapping("/users")
	public UserEntity saveUser(
		@Valid @RequestBody UserEntity userentity)
	{
		return userService.saveUser(userentity);
	}

	
	@GetMapping("/users")
	public List<UserEntity> fetchUserList()
	{
		return userService.fetchUserList();
	}

	
	@PutMapping("/user/{id}")
	public UserEntity
	updateUser(@RequestBody UserEntity userentity,
					@PathVariable("id") Long Id)
	{
		return userService.updateUser(
			userentity, Id);
	}

	
	@DeleteMapping("/deleteuser/{id}")
	public String deleteUserById(@PathVariable("id")
									Long Id)
	{
		userService.deleteUserById(
			Id);

		return "Deleted Successfully";
	}
}

