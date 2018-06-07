package org.fkit.dao;

import org.fkit.test.Order;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
public interface IOrderDAO {
	@Select("select *from orders a join orderitems b on a.orderid=b.orderid")
	List<Order> AdfindAllOrder();
	
	@Select("select *from orders a join orderitems b on a.orderid=b.orderid where storeid=${storeid}")
	List<Order> findAllOrder(@Param("storeid") Integer storeid);
	
	
	
	@Select("select *from orders a join orderitems b on a.orderid=b.orderid where a.orderid=#{orderid}")
	Order findOrderById(@Param("orderid") String orderid);
	 
	@Delete("delete from orders where orderid=${orderid}")
	void deleteOrder(@Param("orderid") String orderid);
	
	@Update("update orders set delivery_date=#{delivery_date},expressid=#{expressid},express=#{express} where orderid=#{orderid}")
	void updateOrder(@Param("delivery_date") String delivery_date,@Param("expressid") Integer expressid,
			@Param("express") String express,@Param("orderid") String orderid);
	
}