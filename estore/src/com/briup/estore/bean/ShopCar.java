package com.briup.estore.bean;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 * 购物车
 *  map<商品id,订单项>
 *     1001    2 book (1001 ,name,price)
 * */
public class ShopCar {
	private Map<Long, Line> car
			= new HashMap<Long, Line>();
	
	//添加商品  商品id,购买数量
	public void addCar(Book book,int num){
		Line line = car.get(book.getId());
		if(line==null){
			line = new Line();
			line.setNum(num);
			line.setBook(book);
			car.put(book.getId(), line);
		}else{
			line.setNum(line.getNum()+num);
		}
	}
	//修改商品数量
	public void update(Long id,int num){
		Line line = car.get(id);
		if(line!=null){
			line.setNum(num);
		}
	}
	//获取所有订单项
	public Collection<Line> getLines(){
		return car.values();
	}
	//获取总价
	public double getTotal(){
		double total = 0;
		for(Line line : getLines()){
			total += 
					line.getBook().getPrice()*line.getNum();
		}
		return total;
	}
	
	//清空购物车
	public void clear(){
		car.clear();
	}
	
}
