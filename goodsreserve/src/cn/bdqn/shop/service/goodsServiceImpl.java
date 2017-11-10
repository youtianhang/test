package cn.bdqn.shop.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import cn.bdqn.shop.dao.goodsMapper;
import cn.bdqn.shop.pojo.goods;

@Service
public class goodsServiceImpl implements goodsService {

	@Resource
	goodsMapper goodsmapper;
	
	@Override
	public goods selectid(int district) {
		
		return goodsmapper.selectid(district);
	}

	@Override
	public int updata(goods good) {
		// TODO Auto-generated method stub
		return goodsmapper.updata(good);
	}

	@Override
	public goods select(int id) {
		// TODO Auto-generated method stub
		return goodsmapper.select(id);
	}

}
