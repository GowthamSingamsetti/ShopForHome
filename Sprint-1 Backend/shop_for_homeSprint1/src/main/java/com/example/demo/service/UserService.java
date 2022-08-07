package com.example.demo.service;


import com.example.demo.entity.UserEntity;
import java.util.List;


public interface UserService {

	UserEntity saveUser(UserEntity userentity);

	List<UserEntity> fetchUserList();

	UserEntity updateUser(UserEntity userentity,
								Long Id);

	void deleteUserById(Long Id);
}

