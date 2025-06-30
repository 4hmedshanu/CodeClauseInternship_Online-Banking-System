package online_banking_system_mycontroller;


import java.beans.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.uservalue;



@Controller
public class maincontroller {
	
	@Autowired
	private databasework sqlwork;
	
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	
	
	
	@RequestMapping("/home/{id}")
	public String stetement(
			@PathVariable("id") int value,
			Model mo
			) {
		uservalue data=(uservalue) sqlwork.fatch_data(value);
		
	    List<uservalue> stetement=(List<uservalue>) sqlwork.transaction();
	    System.out.println(value);
	    System.out.println(stetement);
		mo.addAttribute("data", data );
		mo.addAttribute("data_2", stetement);
		return "home";
	}
	
	
	@RequestMapping("/foudtransfer/{id}")
	public String foudtransfer(
			@PathVariable ("id") int value,
			Model mo
			) {
		uservalue data=(uservalue) sqlwork.fatch_data(value);
		List<uservalue> accountdata=(List<uservalue>) sqlwork.accountfatch_data(value);
		mo.addAttribute("data", data );
		mo.addAttribute("data_2",accountdata);
		return "foudtransfer";
	}
	
	@RequestMapping("/myprofile/{id}")
	
	public String myprofile(
			@PathVariable("id") int value,
			Model mo
			) {
		uservalue data=(uservalue) sqlwork.fatch_data(value);
		List<uservalue>  accountdata=sqlwork.accountfatch_data(value);
		mo.addAttribute("data", data );
		mo.addAttribute("data_2",accountdata);
		return "myprofile";
	}
	
	
	@RequestMapping("/Accountdetail/{id}")
	public String Accountdetail(
			@PathVariable("id") int value,
			Model mo
			) {
		uservalue data=(uservalue) sqlwork.fatch_data(value);
		
		List<uservalue> accountdata=(List<uservalue>) sqlwork.accountfatch_data(value);
		mo.addAttribute("data", data );
		mo.addAttribute("data_2",accountdata);
		return "accountdetail";
	}
	
	
	@RequestMapping("/changepasswared/{id}")
	
	public String changepasswared(
			@PathVariable("id") int value,
			Model mo
			) {
		uservalue data=(uservalue) sqlwork.fatch_data(value);
		mo.addAttribute("data", data );
		return "changepasswared";
	}
	
	@RequestMapping("/addnewaccount/{id}/{name}")
	public String newaddnewaccount(
			@PathVariable("id") int value,
			@PathVariable("name") String name,
			Model mo
			) {
		mo.addAttribute("id", value);
		mo.addAttribute("name" ,name);
		return "new_account";
	}
	
	
	
	@RequestMapping("/register_data")
	
	public String getregister(
			@ModelAttribute uservalue value
			
			) {
		int nu=sqlwork.adddataregister(value);
		System.out.println(nu);
		return "login";
	}
	
	
	@RequestMapping("/loginuser")

	public String getlogincheek(@ModelAttribute uservalue value,
			Model mo
			) {
		
	   uservalue data=sqlwork.login(value);
	   return "redirect:/home/" + data.getId();
	}
	
	@RequestMapping("/newaccount")
	
	public String getnew_account(
			@ModelAttribute uservalue value
			) {
		int n=sqlwork.adddnewaccount(value);
		return "redirect:/Accountdetail/"+value.getId();
	}
	
	
	@RequestMapping("/account")
	public String sendamount(
			@ModelAttribute uservalue value,
			Model mo
			) {
		System.out.println(value.getAccount_id());
		int totolamount=value.getAvilable()-value.getBalance();
		int i=sqlwork.fundtracsfers(value);
		int vau=sqlwork.modifyaccount(value.getSender_account_id() , totolamount);
		return "redirect:/foudtransfer/" + value.getId();

	}
	
	
	@RequestMapping("/changevaluepassword")

	public String changevaluepassword(
			@ModelAttribute uservalue value,
			Model mo
			) {
	   int n=sqlwork.changepassword(value);
		return  "redirect:/changepasswared/" + value.getId();
	}
	
	@RequestMapping("/edit/{id}")
	public String getedit(
			@PathVariable("id") int value,
			Model mo
			) {
		mo.addAttribute("id",value);
		return "edit_My_Profile";
	}
	
	@RequestMapping("/editprofile")
	public String editprofile(
			@ModelAttribute uservalue value,
			Model mo
			) {
		int n=sqlwork.changeprofile(value);
		return "redirect:/myprofile/" +value.getId() ;
	}
	
	
@ExceptionHandler(value = Exception.class)
public String eroorpage() {
	return "error";
}





	
	
	
	
	
	
	
	
	
	
	
	
}
