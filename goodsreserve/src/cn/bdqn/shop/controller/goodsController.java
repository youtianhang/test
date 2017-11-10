package cn.bdqn.shop.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.bdqn.shop.pojo.goods;
import cn.bdqn.shop.service.goodsService;


@Controller
public class goodsController {
	@Resource
	goodsService goodsservice;
	@RequestMapping(value="selectdistrict",method = RequestMethod.GET)
	public String selectall(Model model,@RequestParam String quyu){
		
		System.out.println(quyu);
		
		goods goo=goodsservice.selectid(Integer.parseInt(quyu));
		
		model.addAttribute("goods",goo);
		
		return "select";		
	}
	
	@RequestMapping(value="updata")
	public String updata(Model model,@RequestParam int id){
		
		goods go = goodsservice.select(id);
		model.addAttribute("good",go);
		return "upada";	
	}
	
	@RequestMapping(value="updataid",method = RequestMethod.GET)
	public String updataid(goods good){
		
		int suss = goodsservice.updata(good);
		
		if(suss>0){     
			return "select";
		}else{
			return "upada";	
		}
		
	}
}
