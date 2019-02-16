package com.dao;

import com.pojo.User;

public interface UserDao {
    int addUser(User user);
    User queryUser(User user);
}
