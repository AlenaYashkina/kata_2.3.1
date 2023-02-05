package crud.dao;

import crud.model.User;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class UserDAOImpl implements UserDao {

    @PersistenceContext
    private EntityManager em;

    public List<User> getAllUsers() {
        List<User> users = (List<User>) em.createQuery("from User")
                .getResultList();
        return users;
    }

    public User getUser(long id) {
        User user = (User) em.find(User.class, id);
        return user;
    }

    public void createUser(User user) {
        em.persist(user);
    }

    public void updateUser(long id, User user) {
        User userFromTable = em.find(User.class, id);
        userFromTable.setName(user.getName());
        userFromTable.setLastName(user.getLastName());
        userFromTable.setAge(user.getAge());
        em.merge(userFromTable);
    }

    public void deleteUser(long id) {
        User user = em.find(User.class, id);
        em.remove(user);
    }
}
