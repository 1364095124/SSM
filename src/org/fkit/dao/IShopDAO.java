package org.fkit.dao;

import org.fkit.test.Shop;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.Insert;

public interface IShopDAO {
	//查询所有的店铺
	@Select("select *from shop")
	List<Shop> findAllShop();
	
	//根据id查询店铺
	@Select("select *from shop where shopid = #{shopid}")
	Shop findShopById(@Param(value="shopid") int shopid);
	
	//插入一个新的店铺信息
	@Insert("insert into shop(shopid,shopname,introduction) values(#{shopid},#{shopname},#{introduction})")
	void insertShop(Shop shop);
	
	//根据修改一个店铺的信息
	@Update("update shop set shopname=#{shopname},introduction=#{introduction} where shopid=#{shopid}")
	void updateShop(Shop shop);
	
	//删除一个店铺的信息
	@Delete("delete from shop where shopid=#{shopid}")
	void deleteShop(Integer shopid);
}
