package crud.dao;

import crud.model.User;

import java.util.List;

public interface UserDao {
    List<User> getAllUsers();

    User getUser(long id);

    void createUser(User user);

    void updateUser(long id, User user);

    void deleteUser(long id);
}
