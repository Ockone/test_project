package com.intermediary.model;



/**
 * Customer entity. @author MyEclipse Persistence Tools
 */

public class Customer  implements java.io.Serializable {


    // Fields    

     private Integer customerid;
     private String name;
     private String customeradress;
     private String customercontact;
     private String password;
     private String customerphoto;
     private String identification;
     private Integer if_;


    // Constructors

    /** default constructor */
    public Customer() {
    }

    
    /** full constructor */
    public Customer(String name, String customeradress, String customercontact, String password, String customerphoto, String identification, Integer if_) {
        this.name = name;
        this.customeradress = customeradress;
        this.customercontact = customercontact;
        this.password = password;
        this.customerphoto = customerphoto;
        this.identification = identification;
        this.if_ = if_;
    }

   
    // Property accessors

    public Integer getCustomerid() {
        return this.customerid;
    }
    
    public void setCustomerid(Integer customerid) {
        this.customerid = customerid;
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

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public String getCustomerphoto() {
        return this.customerphoto;
    }
    
    public void setCustomerphoto(String customerphoto) {
        this.customerphoto = customerphoto;
    }

    public String getIdentification() {
        return this.identification;
    }
    
    public void setIdentification(String identification) {
        this.identification = identification;
    }

    public Integer getIf_() {
        return this.if_;
    }
    
    public void setIf_(Integer if_) {
        this.if_ = if_;
    }
   








}