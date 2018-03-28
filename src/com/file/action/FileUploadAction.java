package com.file.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;

import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class FileUploadAction extends ActionSupport implements ServletContextAware{
	private File upload;//struts2将上传的文件封装成File对象（File xx）
	private String uploadFileName;//上传的文件的名字(String xxFileName)
	private String uploadContextType;//上传文件的类型(String xxContentType)
	
	private String path;//文件上传的路径（user/images）
	private int size;//文件上传的大小（设置为最大20M）
	private ServletContext servletContext;
	
	public String upload() throws Exception {
		String realPath = servletContext.getRealPath(path);
		File realFile = new File(realPath);
		if (!realFile.exists()) {
			realFile.mkdirs();
		}
		System.out.println(path);//上传文件的所在文件夹
		System.out.println(realPath);//上传的文件所在绝对路径
		System.out.println(size);//上传文件大小
		/*System.out.println(files[i].length());//文件个数
*/		System.out.println("------------");

		InputStream is=null;  
		OutputStream os=null;  
		try {  
		    is = new BufferedInputStream(new FileInputStream(upload));  
		    os = new BufferedOutputStream(new FileOutputStream(realPath+"/"+uploadFileName));  
		      
		    byte[] buffer = new byte[1024];  
		    int len=0;  
		    while((len=is.read(buffer))!=-1){  
		        os.write(buffer,0,len);  
		    }     
		}catch(Exception e){
			e.printStackTrace();
		}finally{  
		    if(is !=null) is.close();
		    if(os!=null) os.close();  
		}  
		return "uploadSuccess";
	}
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext=servletContext;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getUploadContextType() {
		return uploadContextType;
	}

	public void setUploadContextType(String uploadContextType) {
		this.uploadContextType = uploadContextType;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public ServletContext getServletContext() {
		return servletContext;
	}
}