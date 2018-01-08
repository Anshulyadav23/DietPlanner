package com.dietplanner.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Credential")
public class Credential implements Serializable  {

	private static final long serialVersionUID = 4941586879331815935L;

	@Id
	@Column(name = "LoginId")
	private String LoginId;
	
	@Column(name = "LoginPassword")
	private String LoginPassword;
	
	@Column(name = "UserName")
	private String UserName ;
	
	@Column(name = "Address")
	private String Address ;
	
	@Column(name = "EmailID")
	private String EmailID ;
	
	@Column(name = "ContactNumber")
	private long ContactNumber;
	
	public Credential() {
	}
	
	

	public Credential(int iD, String loginId, String loginPassword, String userName, String address, String emailID,
			long contactNumber) {
		super();
		
		LoginId = loginId;
		LoginPassword = loginPassword;
		UserName = userName;
		Address = address;
		EmailID = emailID;
		ContactNumber = contactNumber;
	}



	

	public String getLoginId() {
		return LoginId;
	}

	public void setLoginId(String loginId) {
		LoginId = loginId;
	}

	public String getLoginPassword() {
		return LoginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		LoginPassword = loginPassword;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getEmailID() {
		return EmailID;
	}

	public void setEmailID(String emailID) {
		EmailID = emailID;
	}

	public long getContactNumber() {
		return ContactNumber;
	}

	public void setContactNumber(long contactNumber) {
		ContactNumber = contactNumber;
	}



	@Override
	public String toString() {
		return "Credential [ LoginId=" + LoginId + ", LoginPassword=" + LoginPassword + ", UserName="
				+ UserName + ", Address=" + Address + ", EmailID=" + EmailID + ", ContactNumber=" + ContactNumber + "]";
	}
	
	
	
	
}
