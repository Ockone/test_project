package com.intermediary.action;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.intermediary.dao.messageDao;
import com.intermediary.model.Message;
import com.opensymphony.xwork2.ActionSupport;
@Controller @Scope("prototype")
public class messageAction extends ActionSupport{
	@Resource messageDao messageDao;
	private List<Message> messageList;
	private Message message;
	private String keyWords;
	private Date orgintime;
	String sortname;
	private String deg;
	private File uploadFile;
	private String uploadFileFileName,uploadFileContentType;
	private static final long serialVersionUID = 1L;
    private File companyphoto;
    private String companyphotoFileName,companyphotoContentType;
    private String orginphoto;
	
	public String getAll(){
		messageList=messageDao.queryAllMessage();
		return "ccc";
	}
	

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}
	
	public String queryMessage() throws Exception {
		messageList=messageDao.queryMessageInfo(keyWords);
		Collections.reverse(messageList);
        return "show_view";
    }
	
	public String sortMessageBySalary(){
		System.out.println("getin");
		messageList = messageDao.queryAllMessage();
		comparebysalary c = new comparebysalary();
		Collections.sort(messageList,c);
		return "show_view";
	}
	
	public String sortMessageBySalary2(){
		messageList = messageDao.queryAllMessage();
		comparebysalary c = new comparebysalary();
		Collections.sort(messageList,c);
		Collections.reverse(messageList);
		return "show_view";
	}
	
	public String sortMessageByDegree(){
		messageList = messageDao.queryAllMessage();
		comparebydegree c = new comparebydegree();
		Collections.sort(messageList,c);
		return "show_view";
	}
	
	public String sortMessageByDegree2(){
		messageList = messageDao.queryAllMessage();
		comparebydegree c = new comparebydegree();
		Collections.sort(messageList,c);
		Collections.reverse(messageList);
		return "show_view";
	}
	
	public String sortMessageByAvaliable(){
		messageList = messageDao.queryAllMessage();
		comparebyavaliable c = new comparebyavaliable();
		Collections.sort(messageList,c);
		return "show_view";
	}
	
	public String sortMessageByAvaliable2(){
		messageList = messageDao.queryAllMessage();
		comparebyavaliable c = new comparebyavaliable();
		Collections.sort(messageList,c);
		Collections.reverse(messageList);
		return "show_view";
	}
	/*public int compareTo(Message m){
		
		if()
		return 0;
	}*/
	
	public String sortMessage() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		messageList=messageDao.queryAllMessage();
		int t;
		//工作类别筛选
		String boxStr[]=request.getParameterValues("box");
		for(int i=0;i<messageList.size();i++){
			if(boxStr==null)break;
			Message m= messageList.get(i);
			t = 0;
			for(int j=0;j<boxStr.length;j++){
				if(boxStr[j].equals(m.getSorts())){
					t++;
				}
			}
			if(t==0){
				messageList.remove(i);
				i--;
			}
	    }
		//学历要求筛选
		String boxStr2[]=request.getParameterValues("box2");
		for(int i=0;i<messageList.size();i++){
			if(boxStr2==null)break;
			Message m= messageList.get(i);
			t = 0;
			for(int j=0;j<boxStr2.length;j++){
				if(Integer.parseInt(boxStr2[j])==(m.getDemand())){
					t++;
				}
			}
			if(t==0){
				messageList.remove(i);
				i--;
			}
	    }
		//薪资筛选
		String minsalary=request.getParameter("minsalary");
		System.out.println(minsalary);
		String maxsalary=request.getParameter("maxsalary");
		System.out.println(maxsalary);
		for(int i=0;i<messageList.size();i++){
			Message m= messageList.get(i);
			t = 0;
			if(minsalary==""||m.getSalary()>=Integer.parseInt(minsalary))
				t++;
			if(maxsalary==""||m.getSalary()<=Integer.parseInt(maxsalary))
				t++;
			if(t<2){
				messageList.remove(i);
				i--;
			}
	    }
		return "show_view";
    }
    
	public String getKeyWords() {
		return keyWords;
	}

	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}

	public List<Message> getMessageList() {
		return messageList;
	}

	public void setMessageList(List<Message> messageList) {
		this.messageList = messageList;
	}
	
	 public String getComMessage() throws Exception{
	        message=messageDao.getMessageById(message.getJobid());
	        return "one";
	 }
	 public String getComMessage2() throws Exception{
	        message=messageDao.getMessageById(message.getJobid());
	        return "two";
	 }
	 public String addComMessage2(){
		 messageDao.addMessage(message);
		 return "success";
	 }
	 
	 public String addComMessage() throws Exception{
		 String path = ServletActionContext.getServletContext().getRealPath("/upload");
		 String companyphotoFileName = "";
		 if(uploadFile!=null){
			 InputStream is = new FileInputStream(uploadFile);
			 String fileContentType = this.getUploadFileContentType();
			 System.out.println(fileContentType);
			 if(fileContentType.equals("image/jpeg") || fileContentType.equals("image/pjeg"))
				 companyphotoFileName = UUID.randomUUID().toString()+".jpg";
			 else if(fileContentType.equals("image/gif"))
				 companyphotoFileName = UUID.randomUUID().toString()+".gif";
			 else if(fileContentType.equals("image/png"))
				 companyphotoFileName = UUID.randomUUID().toString()+".png";
			 File file = new File(path,companyphotoFileName);
			 OutputStream os = new FileOutputStream(file);
			 byte[] b = new byte[1024];
			 int bs = 0;
			 while((bs = is.read(b))>0){
				 os.write(b,0,bs);
			 }
			 is.close();
			 os.close();
			 message.setCompanyphoto(companyphotoFileName);
		 }else{
			 message.setCompanyphoto("ework.png");
		 }
		    if(deg.equals("不限")){
				message.setDemand(0);
			}else if(deg.equals("大专以上")){
				message.setDemand(1);
			}else if(deg.equals("本科以上")){
				message.setDemand(2);
			}else if(deg.equals("研究生以上")){
				message.setDemand(3);
			}else{
				message.setDemand(4);
			}
		 messageDao.addMessage(message);
		 System.out.println("hh");
		 return "success";
	 }
	 
	 
	 
	 public String deleteComMessage() throws Exception{
		 messageDao.deleteMessage(message.getJobid());
		 return "success";
	 }
     
	  
	 public String editMessage()  throws Exception{
		 if(message.getDeadline() == null){
			 message.setDeadline(orgintime);
		 }
		 String path = ServletActionContext.getServletContext().getRealPath("/upload");
	    	String filename = "";
	    	if(companyphoto!=null){
	    		System.out.println("ssss");
	    		InputStream is = new FileInputStream(companyphoto);
	    		String fileContentType = this.getCompanyphotoContentType();
	    		System.out.println(fileContentType);
	    		if(fileContentType.equals("image/jpeg") || fileContentType.equals("image/pjeg"))
	    			filename = UUID.randomUUID().toString()+".jpg";
				else if(fileContentType.equals("image/gif"))
					 filename = UUID.randomUUID().toString()+".gif";
				else if(fileContentType.equals("image/png"))
					 filename = UUID.randomUUID().toString()+".png";
	    		OutputStream os =new FileOutputStream(new File(path,filename));
	    		byte[] b = new byte[1024];
	    		int bs = 0;
				while((bs = is.read(b))>0){
					 os.write(b,0,bs);
				}
				 is.close();
				 os.close();
				 System.out.println(filename);
	    	}else{
	    		System.out.println("没有图片");
	    		filename = orginphoto;
	    		System.out.println(filename);
	    	}
	    	message.setCompanyphoto(filename);
		 if(deg.equals("不限")){
				message.setDemand(0);
			}else if(deg.equals("大专以上")){
				message.setDemand(1);
			}else if(deg.equals("本科以上")){
				message.setDemand(2);
			}else if(deg.equals("研究生以上")){
				message.setDemand(3);
			}else{
				message.setDemand(4);
			}
		 messageDao.updateMessage(message);
		 return "success";
	 }
	 
	 public void updata() throws Exception{
		 messageDao.updateMessage(message);
	 }
	 
	 public String fwork(){
		 System.out.println(message.getFid());
		 messageList=messageDao.queryMessageInfo2(message.getFid());
		 return "fwork";
	 }


	public File getUploadFile() {
		return uploadFile;
	}


	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}


	public String getUploadFileFileName() {
		return uploadFileFileName;
	}


	public void setUploadFileFileName(String uploadFileFileName) {
		this.uploadFileFileName = uploadFileFileName;
	}


	public String getUploadFileContentType() {
		return uploadFileContentType;
	}


	public void setUploadFileContentType(String uploadFileContentType) {
		this.uploadFileContentType = uploadFileContentType;
	}


	public String getSortname() {
		return sortname;
	}


	public void setSortname(String sortname) {
		this.sortname = sortname;
	}


	public String getDeg() {
		return deg;
	}


	public void setDeg(String deg) {
		this.deg = deg;
	}


	public File getCompanyphoto() {
		return companyphoto;
	}


	public void setCompanyphoto(File companyphoto) {
		this.companyphoto = companyphoto;
	}


	public String getCompanyphotoFileName() {
		return companyphotoFileName;
	}


	public void setCompanyphotoFileName(String companyphotoFileName) {
		this.companyphotoFileName = companyphotoFileName;
	}


	public String getCompanyphotoContentType() {
		return companyphotoContentType;
	}


	public void setCompanyphotoContentType(String companyphotoContentType) {
		this.companyphotoContentType = companyphotoContentType;
	}


	public String getOrginphoto() {
		return orginphoto;
	}


	public void setOrginphoto(String orginphoto) {
		this.orginphoto = orginphoto;
	}



	
	class comparebydegree implements Comparator{

		public int compare(Object o1, Object o2) {
			// TODO Auto-generated method stub
			Message m1 = (Message)o1;
			Message m2 = (Message)o2;
			if(m1.getDemand()-m2.getDemand()>0)
				return -1;
			else
				return 1;
		}
		
	}
	
	class comparebysalary implements Comparator{
		public int compare(Object o1, Object o2) {
			// TODO Auto-generated method stub
			Message m1 = (Message)o1;
			Message m2 = (Message)o2;
			if(m1.getSalary()-m2.getSalary()>0)
				return -1;
			else
				return 1;
		}
	}
	
	class comparebyavaliable implements Comparator{
		public int compare(Object o1, Object o2) {
			Message m1 = (Message)o1;
			Message m2 = (Message)o2;
			if(m1.getAvailable()-m2.getAvailable()>0)
				return -1;
			else
				return 1;
		}
	}

	public Date getOrgintime() {
		return orgintime;
	}


	public void setOrgintime(Date orgintime) {
		this.orgintime = orgintime;
	}

}
