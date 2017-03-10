package cn.supermartin;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.test.context.junit4.SpringRunner;

import cn.supermartin.domin.User;
import cn.supermartin.repository.UserRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UserTest {

	@Autowired
	private UserRepository userRepository;

	// /**
	// * 增加测试
	// */
	// @Test
	// public void addTest() {
	// User newUser = new User();
	// newUser.setSerialNo("111");
	// newUser.setName("martin");
	// newUser.setRemark("备注");
	// newUser.setActivated(false);
	// newUser.setCreatedDate(new Date());
	// newUser.setLastLoginDate(new Date());
	// newUser.setType("类型");
	//
	// userRepository.save(newUser);
	//
	// List<User> findAll = userRepository.findAll();
	// for (User user : findAll) {
	// System.out.println(user.getName());
	// }
	//
	// userRepository.delete(newUser);
	//
	// }
	//
	// /**
	// * 分页查询
	// */
	// @Test
	// public void fenye() {
	// Pageable pageable = new PageRequest(1, 2, Sort.Direction.ASC, "id");
	// Page<User> pages = userRepository.findAll(pageable);
	//
	// Iterator<User> iterator = pages.iterator();
	// while (iterator.hasNext()) {
	// User next = iterator.next();
	// System.out.println(next.getName());
	// }
	// }

	/**
	 * 查询测试
	 */
	@Test
	public void query() {
//		List<User> users = userRepository.findByLike("7", "", "", "");
//		Iterator<User> iterator = users.iterator();
//		while (iterator.hasNext()) {
//			User next = iterator.next();
//			System.out.println(next.getName());
//		}
	}

}
