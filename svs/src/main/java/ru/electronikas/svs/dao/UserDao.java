package ru.electronikas.svs.dao;


import ru.electronikas.svs.domain.User;

public interface UserDao {

	User findByUserName(String username);

}