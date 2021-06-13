package com.baverage.backend.servingwebcontent;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.SQLException;
import java.util.List;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.web.util.HtmlUtils;

<<<<<<< HEAD
import DatabaseConnection.Bestellung;
import DatabaseConnection.DBConnection;


=======
>>>>>>> 9222d49eec9f40928b6733e3c7c8f16c67f280e8
@Controller
public class GreetingController {

	@GetMapping("/greeting")
	public String greeting(@RequestParam(name="name", required=false, defaultValue="World") String name, Model model) {
		model.addAttribute("name", name);
		return "greeting";
	}
	
	@GetMapping("/getOrders")
	public List<Bestellung> getOrders() throws ClassNotFoundException, SQLException {
		DBConnection db= new DBConnection();
		db.connectToDatabase();
		String result= db.getDataFromDatabase("Bestellungen").toString();
		
		
		return null;
	}
}
