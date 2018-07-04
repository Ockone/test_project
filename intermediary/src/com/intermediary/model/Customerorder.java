package com.intermediary.model;

/**
 * Customerorder entity. @author MyEclipse Persistence Tools
 */

public class Customerorder implements java.io.Serializable {

	// Fields

	private Integer orderid;
	private Integer jobid;
	private Integer id;
	private String time;
	private String resume;
	private Integer fid;
	private String retime;
	private String name;
	private String customeradress;
	private String customercontact;
	private String customerphoto;
	private String sex;
	private String birth;
	private String nation;
	private String politicstatus;
	private Integer height;
	private String schoolsystem;
	private String education;
	private String householdregister;
	private String major;
	private String school;
	private String foreignlanguage;
	private String computer;
	private String email;
	private String zipcode;
	private String evaluation;
	private String t1;
	private String c1;
	private String e1;
	private String t2;
	private String c2;
	private String e2;
	private String t3;
	private String c3;
	private String e3;

	// Constructors

	/** default constructor */
	public Customerorder() {
	}

	/** full constructor */
	public Customerorder(Integer jobid, Integer id, String time, String resume,
			Integer fid, String retime, String name, String customeradress,
			String customercontact, String customerphoto, String sex,
			String birth, String nation, String politicstatus, Integer height,
			String schoolsystem, String education, String householdregister,
			String major, String school, String foreignlanguage,
			String computer, String email, String zipcode, String evaluation,
			String t1, String c1, String e1, String t2, String c2, String e2,
			String t3, String c3, String e3) {
		this.jobid = jobid;
		this.id = id;
		this.time = time;
		this.resume = resume;
		this.fid = fid;
		this.retime = retime;
		this.name = name;
		this.customeradress = customeradress;
		this.customercontact = customercontact;
		this.customerphoto = customerphoto;
		this.sex = sex;
		this.birth = birth;
		this.nation = nation;
		this.politicstatus = politicstatus;
		this.height = height;
		this.schoolsystem = schoolsystem;
		this.education = education;
		this.householdregister = householdregister;
		this.major = major;
		this.school = school;
		this.foreignlanguage = foreignlanguage;
		this.computer = computer;
		this.email = email;
		this.zipcode = zipcode;
		this.evaluation = evaluation;
		this.t1 = t1;
		this.c1 = c1;
		this.e1 = e1;
		this.t2 = t2;
		this.c2 = c2;
		this.e2 = e2;
		this.t3 = t3;
		this.c3 = c3;
		this.e3 = e3;
	}

	// Property accessors

	public Integer getOrderid() {
		return this.orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public Integer getJobid() {
		return this.jobid;
	}

	public void setJobid(Integer jobid) {
		this.jobid = jobid;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getResume() {
		return this.resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}

	public Integer getFid() {
		return this.fid;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
	}

	public String getRetime() {
		return this.retime;
	}

	public void setRetime(String retime) {
		this.retime = retime;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCustomeradress() {
		return this.customeradress;
	}

	public void setCustomeradress(String customeradress) {
		this.customeradress = customeradress;
	}

	public String getCustomercontact() {
		return this.customercontact;
	}

	public void setCustomercontact(String customercontact) {
		this.customercontact = customercontact;
	}

	public String getCustomerphoto() {
		return this.customerphoto;
	}

	public void setCustomerphoto(String customerphoto) {
		this.customerphoto = customerphoto;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirth() {
		return this.birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getNation() {
		return this.nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getPoliticstatus() {
		return this.politicstatus;
	}

	public void setPoliticstatus(String politicstatus) {
		this.politicstatus = politicstatus;
	}

	public Integer getHeight() {
		return this.height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}

	public String getSchoolsystem() {
		return this.schoolsystem;
	}

	public void setSchoolsystem(String schoolsystem) {
		this.schoolsystem = schoolsystem;
	}

	public String getEducation() {
		return this.education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getHouseholdregister() {
		return this.householdregister;
	}

	public void setHouseholdregister(String householdregister) {
		this.householdregister = householdregister;
	}

	public String getMajor() {
		return this.major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getSchool() {
		return this.school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getForeignlanguage() {
		return this.foreignlanguage;
	}

	public void setForeignlanguage(String foreignlanguage) {
		this.foreignlanguage = foreignlanguage;
	}

	public String getComputer() {
		return this.computer;
	}

	public void setComputer(String computer) {
		this.computer = computer;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getZipcode() {
		return this.zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getEvaluation() {
		return this.evaluation;
	}

	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}

	public String getT1() {
		return this.t1;
	}

	public void setT1(String t1) {
		this.t1 = t1;
	}

	public String getC1() {
		return this.c1;
	}

	public void setC1(String c1) {
		this.c1 = c1;
	}

	public String getE1() {
		return this.e1;
	}

	public void setE1(String e1) {
		this.e1 = e1;
	}

	public String getT2() {
		return this.t2;
	}

	public void setT2(String t2) {
		this.t2 = t2;
	}

	public String getC2() {
		return this.c2;
	}

	public void setC2(String c2) {
		this.c2 = c2;
	}

	public String getE2() {
		return this.e2;
	}

	public void setE2(String e2) {
		this.e2 = e2;
	}

	public String getT3() {
		return this.t3;
	}

	public void setT3(String t3) {
		this.t3 = t3;
	}

	public String getC3() {
		return this.c3;
	}

	public void setC3(String c3) {
		this.c3 = c3;
	}

	public String getE3() {
		return this.e3;
	}

	public void setE3(String e3) {
		this.e3 = e3;
	}

}