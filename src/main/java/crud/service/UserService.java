package crud.service;

import crud.model.User;

import java.util.List;

public interface UserService {
    List<User> getAllUsers();

    User getUser(long id);

    void createUser(User user);

    void updateUser(long id, User user);

    void deleteUser(long id);
}
