package com.service;

import java.text.SimpleDateFormat;
import java.util.Date;


/**
 * 
 * @author xiaotang
 *
 */
public class OrderService {
	//随机生成订单号的方法
	public String getOrderNum(){
		double d=0;
		while(d<0.1||d==1){
			d=Math.random();
		}
		Integer i=(int)(d*100000000);
		return i.toString();
	}
	//获取订单日期的方法
	public String getOrderDate(){
		 Date d = new Date();  
	     System.out.println(d);  
	     SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
	     String dateNowStr = sdf.format(d);
	     return dateNowStr;
	}
}
