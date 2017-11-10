package cn.bdqn.shop.dao;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.shop.pojo.goods;

public interface goodsMapper {
	public goods selectid(@Param("district") int district);
	
	public goods select(@Param("id") int id);
	
	public int updata(goods good);
}
