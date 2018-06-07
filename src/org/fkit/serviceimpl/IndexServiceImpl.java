package org.fkit.serviceimpl;
import org.fkit.service.IndexService;
import org.fkit.test.User;
import org.fkit.test.Shop;
import org.fkit.test.Product;
import org.fkit.test.Owner;
import org.fkit.test.Order;
import org.fkit.dao.IShopDAO;
import org.fkit.dao.IUserDAO;
import org.fkit.dao.IProductDAO;
import org.fkit.dao.IOrderDAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("indexService")
public class IndexServiceImpl implements IndexService{
	@Autowired
	private IUserDAO userDao;
	@Autowired
	private IShopDAO shopDao;
	@Autowired
	private IProductDAO productDao; 
	@Autowired
	private IOrderDAO orderDao;
	/**
	 * IndexServiceImple接口findAllUser方法的实现
	 * @see IndexService
	 */
	@Transactional(readOnly=true)
	@Override
	public List<User> findAllUser(){
		return userDao.findAllUser();
	}
	
	/**
	 * IndexServiceImple接口findUserById方法的实现
	 * @see IndexService
	 */
	@Transactional(readOnly=true)
	@Override
	public User findUserById(int customerid){
		return userDao.findUserById(customerid);
		
	}
	
	@Override
	public void insertUser(User user){
		userDao.insertUser(user);
	}
	
	@Override
	public void deleteUser(int customerid){
		userDao.deleteUser(customerid);
	}
	
	@Override 
	public void updateUser(User user){
		userDao.updateUser(user);
	}
	
	/**
	 * IndexService接口findAllShop方法的实现
	 * @see IndexService
	 */
	@Transactional(readOnly=true)
	@Override
	public List<Shop> findAllShop(){
		return shopDao.findAllShop();
	}
	
	
	/**
	 *  IndexService接口findShopById方法的实现
	 *  @see IndexService
	 */
	@Transactional(readOnly=true)
	@Override
	public Shop findShopById(int shopid){
		return shopDao.findShopById(shopid);
	}
	
	/**
	 * IndexService接口insertShop方法的实现
	 *  @see IndexService
	 */
	@Override
	public void insertShop(Shop shop){
		 shopDao.insertShop(shop);
	}
	
	/**
	 * IndexService接口deleteShop方法的实现
	 *  @see IndexService
	 */
	@Override
	public void deleteShop(int shopid){
		shopDao.deleteShop(shopid);
	}
	
	/**
	 * IndexService接口updateShop方法的实现
	 *  @see IndexService
	 */
	@Override
	public void updateShop(Shop shop){
		shopDao.updateShop(shop);
	}
	
	@Transactional(readOnly=true)
	@Override
	public List<Product> AdfindAllProduct(){
		return productDao.findAll();
	}
	
	@Transactional(readOnly=true)
	@Override
	public List<Product> findAllProduct(Integer  storeid){
		return productDao.findAllProducts(storeid);
	}
	
	@Transactional(readOnly=true)
	@Override
	public Product findProductById(Integer productid){
		return  productDao.findProductById(productid);
	}
	
	@Override
	public void insertProduct(Product product){
		 productDao.addProduct(product);
	}
	
	@Override
	public void deleteProduct(Integer productid){
		productDao.deleteProduct(productid);
	}
	
	@Override
	public void updateProduct(Product product){
		productDao.updateProduct(product);
	}
	
	@Override
	public void changeProduct(Integer productid){
		Product product=productDao.findProductById(productid);
		if(product.getState().equals("热销中")){
			productDao.upProduct(productid);
		}
		else{
			productDao.fallProduct(productid);
		}
	}
	
	@Transactional(readOnly=true)
	@Override 
	public Owner login(String loginname,String password){
		return productDao.login(loginname, password);
	}
	
	@Transactional(readOnly=true)
	@Override
	public List<Order> AdfindAllOrder(){
		return orderDao.AdfindAllOrder();
	}
	
	@Transactional(readOnly=true)
	@Override
	public List<Order> findAllOrder(Integer storeid){
		return orderDao.findAllOrder(storeid);
	}
	
	@Transactional(readOnly=true)
	@Override
	public Order findOrderById(String orderid){
		return orderDao.findOrderById(orderid);
	}
	
	@Override
	public void updateOrder(String delivery_date,Integer expressid,String express,String orderid){
		orderDao.updateOrder(delivery_date, expressid, express, orderid);
	}
	
	@Override
	public void deleteOrder(String orderid){
		orderDao.deleteOrder(orderid);
	}
}
