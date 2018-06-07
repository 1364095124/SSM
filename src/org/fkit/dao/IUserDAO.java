package org.fkit.dao;
import org.fkit.test.User;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.SelectProvider;

public interface IUserDAO {
	//根据用户编码查询用户
	@Select("select *from customers where Customerid=#{customerid}")
	User findUserById(int customerid);
	
	//查询返回所有的用户列表
	@Select("select *from Owners")
	List<User> findAllUser();
	
	//插入一个新的用户信息
	@Insert("insert into customers(customerid,customername,gender,shopid) values(#{customerid},#{customername},#{gender},#{shopid}")
	void insertUser(User user);
	
	//根据id删除一个用户信息
	@Delete("delete from customers where customerid=#{customerid}")
	void deleteUser(int customerid);
	
	//根据id修改一个用户信息
	@Update("update customers set customername=#{customername},gender=#{gender},shopid=#{shopid} where customerid=#{customerid}")
	void updateUser(User user);
	
}
