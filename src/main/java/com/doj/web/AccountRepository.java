/**
 * 
 */
package com.doj.web;

import java.util.List;

/**
 * @author Karunakar
 *
 */
public interface AccountRepository {
	
	List<Account> getAllAccounts();
	
	Account getAccount(String number);
}
