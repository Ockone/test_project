package com.intermediary.action;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;
import java.text.SimpleDateFormat;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


import com.intermediary.dao.customerorderDao;
import com.intermediary.model.Customerorder;
import com.intermediary.model.Message;
import com.opensymphony.xwork2.ActionSupport;
@Controller @Scope("prototype")
public class customerorderAction extends ActionSupport {
	@Resource customerorderDao customerorderDao;
	private Customerorder customerorder;
	private Message message;
	private static final long serialVersionUID = 1L;
	private int flag;
	private int degree;
	private int key;
	private int keydd;
	private List<Customerorder> customerorderList;
	public String wantOrder() throws Exception{
		System.out.println("resume:"+customerorder.getResume());
		if(flag==0){
			System.out.println("过了");//不限
		}else if(flag==1){
			if(degree==1)//大专以上
				return "ban";
		}else if(flag==2){
			if(degree<=2)//本科以上
				return "ban";
		}else if(flag==3){
			if(degree<=3)//研究生以上
				return "ban";
		}else if(flag==4){
			if(degree<=4)//博士以上
				return "ban";
		}	
		System.out.println("过了");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String s=df.format(new Date());
		customerorder.setTime(s);	
		customerorderDao.addOrder(customerorder);
		System.out.println(customerorder.getTime());
		return "success2";
	}
	
	public String getorder(){
		customerorder = customerorderDao.getCustomerorderById(key);
		return "show_resume";
	}

	public String tran(){
		//System.out.println(customerorder.getJobid());
        return "resume";
	}

	
	public int getcid(){
		return customerorder.getId();
	}

	public String editOrder(){
		customerorderList = customerorderDao.queryCustomerorderInfo(key);
		/*if(customerorderList.size()==0){	
			customerorder = null;
		}else{
		    customerorder = customerorderList.get(0);
		}*/
		return "ed";
	}
	
	public String sortOrder(){
		customerorderList = customerorderDao.queryCustomerorderInfo2(key);
		//学历要求筛选
		//String boxStr2[]=request.getParameterValues("box2");
		//System.out.println(customerorderList.size());
		for(int i=0;i<customerorderList.size();i++){
			Customerorder m= customerorderList.get(i);
			System.out.println(m.getResume());
			if(Integer.parseInt(m.getResume())<keydd){
				customerorderList.remove(i);
				i--;
			}
		}
		return "ed";
    }

	
	public String editOrder2(){
		customerorderList = customerorderDao.queryCustomerorderInfo2(key);
		return "ed";
	}
	public String deleteyourorder() throws Exception{
		customerorderDao.deleteOrder(key);
		return "success3";
	}
	public String updataorder() throws Exception{
		customerorderDao.updateOrder(customerorder);
		return "success1";
	}

	public Customerorder getCustomerorder(){
		return customerorder;
	}

	public void setCustomerorder(Customerorder customerorder) {
		this.customerorder = customerorder;
	}

	public int getKey() {
		return key;
	}

	public void setKey(int key) {
		this.key = key;
	}

	public List<Customerorder> getCustomerorderList() {
		return customerorderList;
	}

	public void setCustomerorderList(List<Customerorder> customerorderList) {
		this.customerorderList = customerorderList;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	public int getDegree() {
		return degree;
	}
	public void setDegree(int degree) {
		this.degree = degree;
	}
	public int getKeydd() {
		return keydd;
	}
	public void setKeydd(int keydd) {
		this.keydd = keydd;
	}
}
