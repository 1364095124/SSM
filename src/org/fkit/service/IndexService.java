package org.fkit.service;

import org.fkit.test.User;
import org.fkit.test.Shop;
import org.fkit.test.Product;
import org.fkit.test.Owner;
import org.fkit.test.Order;
import java.util.List;

public interface IndexService  {
	/**
	 * 根据id来查询用户
	 * @param customerid
	 * @return User对象
	 */
	 User findUserById(int customerid);
	 
	 /**
	  * 查询返回所有用户
	  * @return User的列表
	  */
	 List<User> findAllUser();
	 
	 /**
	  * 插入一个新的用户信息
	  * @param user
	  */
	 void insertUser(User user);
	 
	 /**
	  * 删除一个用户信息
	  * @param customerid
	  */
	 void deleteUser(int customerid);
	 
	 /**
	  * 删除一个用户信息
	  * @param user
	  */
	 void updateUser(User user);
	 
	 /**
	  * 查询返回所有的店铺
	  * @return Shop的列表
	  */
	 List<Shop> findAllShop();
	 
	 /**
	  * 根据id来查询店铺
	  * @param shopid
	  * @return Shop对象
	  */
	 Shop findShopById(int shopid);
	 
	 /**
	  * 插入一个新的店铺信息
	  * @param shop
	  */
	 void insertShop(Shop shop);
	 
	 /**
	  * 删除一个店铺信息
	  * @param shop
	  */
	 void deleteShop(int shopid);
	 
	 /**
	  * 修改一个店铺信息
	  * @param shop
	  */
	 void updateShop(Shop shop);
	 
	 List<Product> AdfindAllProduct();
	 
	 List<Product> findAllProduct(Integer  storeid);
	 
	 Product findProductById(Integer  productid);

	 void insertProduct(Product product);
	 
	 void deleteProduct(Integer  productid);
	 
	 void updateProduct(Product product);
	 
	 void changeProduct(Integer productid);
	 
	 Owner login(String loginname,String password);
	 
	 List<Order> AdfindAllOrder();
	 
	 List<Order> findAllOrder(Integer storeid);
	 
	 Order findOrderById(String orderid);
	 
	 void deleteOrder(String orderid);
	 
	 void updateOrder(String delivery_date,Integer expressid,String express,String orderid);
	 
}
