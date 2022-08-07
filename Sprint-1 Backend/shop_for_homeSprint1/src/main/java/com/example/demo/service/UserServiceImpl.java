package com.example.demo.service;
import com.example.demo.entity.UserEntity;
import com.example.demo.repository.UserRepository;
import java.util.List;
import java.util.Objects;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service


public class UserServiceImpl
	implements UserService {

	@Autowired
	private UserRepository userRepository;

	
	@Override
	public UserEntity saveUser(UserEntity userentity)
	{
		return userRepository.save(userentity);
	}

	@Override public List<UserEntity> fetchUserList()
	{
		return (List<UserEntity>)
			userRepository.findAll();
	}

	@Override
	public UserEntity
	updateUser(UserEntity userentity,
					Long Id)
	{
		UserEntity ue
			= userRepository.findById(Id)
				.get();

		if (Objects.nonNull(userentity.getName())
			&& !"".equalsIgnoreCase(
				userentity.getName())) {
			ue.setName(
				userentity.getName());
		}

		if (Objects.nonNull(
				userentity.getAddress())
			&& !"".equalsIgnoreCase(
				userentity.getAddress())) {
			ue.setAddress(
				userentity.getAddress());
		}
		if (Objects.nonNull(
				userentity.getEmail())
			&& !"".equalsIgnoreCase(
				userentity.getEmail())) {
			ue.setEmail(
				userentity.getEmail());
		}
		if (Objects.nonNull(
				userentity.getPhoneno())
			&& !"".equalsIgnoreCase(
				userentity.getPhoneno())) {
			ue.setPhoneno(
				userentity.getPhoneno());
		}
		

		

		return userRepository.save(ue);
	}

	@Override
	public void deleteUserById(Long Id)
	{
		userRepository.deleteById(Id);
	}
}

