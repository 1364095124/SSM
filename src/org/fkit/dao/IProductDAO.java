package org.fkit.dao;

import org.fkit.test.Owner;
import org.fkit.test.Product;
import org.fkit.dao.IProductDAO;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.SelectProvider;
public interface IProductDAO {
	@Select("select *from owners where loginname=#{loginname} and password=#{password}")
	Owner login(@Param("loginname") String loginname,@Param("password") String password);
	
	@Select("select *from products")
	List<Product> findAll();
	
	@Select("select *from products where storeid = ${storeid}")
	List<Product> findAllProducts(@Param("storeid") Integer storeid);
	
	@Select("select *from products where productid=#{productid}")
	Product findProductById(Integer productid);
	
	@Insert("insert into products(productid,productname,picture_title,title,origin,material,brand,weight,unit,r_price,new_price,key_word,content,images,storeid)"
			+ "values(#{productid},#{productname},#{picture_title},#{title},#{origin},#{material},#{brand},#{weight},#{unit},#{r_price},#{new_price},#{key_word},#{content},#{images},#{storeid},'热销中')")
	void addProduct(Product product);
	
	@Delete("delete from products where productid=${productid}")
	void deleteProduct(@Param("productid") Integer productid);
	
	@Update("update products set productname=#{productname},picture_title=#{picture_title},title=#{title},origin=#{origin},material=#{material},brand=#{brand}"
			+ ",weight=#{weight},unit=#{unit},r_price=#{r_price},new_price=#{new_price},key_word=#{key_word},content=#{content},images=#{images},storeid=#{storeid} where productid=#{productid}")
	void updateProduct(Product product);
	
	@Update("update products set state='已下架' where productid=${productid}")
	void upProduct(@Param("productid") Integer productid);
	
	@Update("update products set state='热销中' where productid=${productid}")
	void fallProduct(@Param("productid") Integer productid);
}
