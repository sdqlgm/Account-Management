package cn.supermartin.web;

import java.net.URISyntaxException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import cn.supermartin.domin.User;
import cn.supermartin.repository.UserRepository;

@RequestMapping("/api")
@RestController
public class UserController {
	@Autowired
	private UserRepository userRepository;

	/**
	 * 所有用户
	 * 
	 * @param pageable
	 * @return
	 */
	@GetMapping("/users")
	public List<User> getAllUsers(Pageable pageable) {
		Page<User> page = userRepository.findAll(pageable);
		List<User> users = page.getContent();
		return users;
	}

	/**
	 * 获取某个用户信息
	 * 
	 * @param id
	 * @return
	 */
	@GetMapping("/user/{id}")
	public User getUser(@PathVariable Long id) {
		User user = userRepository.findOne(id);
		return user;
	}

	/**
	 * 删除某用户
	 * 
	 * @param id
	 * @return
	 */
	@DeleteMapping("/user/{id}")
	public String deleteUser(@PathVariable Long id) {
		userRepository.delete(id);
		return "OK";
	}

	/**
	 * 创建一个用户
	 * 
	 * @param user
	 * @return
	 */
	@PostMapping("/user")
	public User createUser(@RequestBody User user) {
		if (user.getId() != null) {
			return null;
		}
		User result = userRepository.save(user);
		return result;
	}
	
    /**
     * 修改用户
     * @param user
     * @return
     */
    @PutMapping("/user")
    public User updateUser(@RequestBody User user)  {
        if (user.getId() == null) {
            return createUser(user);
        }
        User result = userRepository.save(user);
        return result;
    }

	@GetMapping("/user/search")
	public List<User> searchUser(Pageable pageable, String serialNo, String name, String remark, String type,
			String startTime, String endTime) {
		if (serialNo == null) {
			serialNo = "";
		}
		if (name == null) {
			name = "";
		}
		if (remark == null) {
			remark = "";
		}
		if (type == null) {
			type = "";
		}
		if (startTime == null || startTime.equals("")) {
			startTime = "1970-01-01 00:00";
		}
		if (endTime == null || endTime.equals("")) {
			endTime = "3000-01-01 00:00";
		}
		List<User> users = userRepository.findByLike(serialNo, name, remark, type, startTime, endTime);
		return users;
	}

}
