package ConnectionFactory;

import java.util.List;

import model.User;

public interface UsersDAO {
	
	public void createUser(User users);
	public User loginUser(String username, String password);
	public List<User> list();
	public void confirmUser(int id);
	public void deleteUser(Long id);
	public void editUser(User users);
	
}
