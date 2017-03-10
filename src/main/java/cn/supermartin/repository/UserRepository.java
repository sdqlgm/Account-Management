package cn.supermartin.repository;

import java.util.List;
import java.util.Optional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import cn.supermartin.domin.User;

public interface UserRepository extends JpaRepository<User, Long> {

	// 实现分页功能
	Page<User> findByNameNot(String name, Pageable pageable);

	// 分页查询
	Page<User> findAll(Pageable pageable);

	Optional<User> findOneById(Long Id);

	@Query(value = "select * from User a where a.serial_no like CONCAT('%',:serialNo,'%') and a.remark like CONCAT('%',:remark,'%') and a.name like CONCAT('%',:name,'%') and a.type like CONCAT('%',:type,'%') and (a.created_date BETWEEN :startTime AND :endTime)", nativeQuery = true)
	List<User> findByLike(@Param("serialNo") String serialNo, @Param("name") String name,
			@Param("remark") String remark, @Param("type") String type,@Param("startTime") String startTime,@Param("endTime")String endTime);

}
