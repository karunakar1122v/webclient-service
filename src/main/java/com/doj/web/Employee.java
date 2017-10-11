/**
 * 
 */
package com.doj.web;

import java.io.Serializable;

/**
 * @author Karunakar
 *
 */
public class Employee implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	private String fname;
	private String lname;
	private String role;
	
	
	
	
	@Override
	public String toString() {
		return "Account [id=" + id + ", fname=" + fname + ", lname=" + lname + ",role=" + role + "]";
	}
}
