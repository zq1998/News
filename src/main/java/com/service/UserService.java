package com.service;

import com.pojo.User;

public interface UserService {
    int addUser(User user);
    User queryUser(User user);
}
