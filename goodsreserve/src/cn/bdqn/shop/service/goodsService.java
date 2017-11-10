package cn.bdqn.shop.service;


import org.apache.ibatis.annotations.Param;

import cn.bdqn.shop.pojo.goods;

public interface goodsService {
	public goods selectid(int district);
	public goods select(@Param("id") int id);
	public int updata(goods good);
}
