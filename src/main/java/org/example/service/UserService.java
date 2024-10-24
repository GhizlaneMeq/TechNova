package org.example.service;

import org.example.domain.User;


import java.util.List;
import java.util.Optional;

public interface UserService {

    User save(User membre);
    User update(User membre);
    void delete(Long id);
    Optional<User> findById(Long id);
    List<User> findAll();
}
