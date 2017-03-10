package cn.supermartin.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class SiteController {

	@RequestMapping(value={"","/","index"})
	public String index(Model model, HttpServletRequest request) {
		return "index";
	}
	
	@RequestMapping("login")
	public String login(Model model, HttpServletRequest request) {
		return "login";
	}
	
	@RequestMapping("crud")
	public String crud(Model model, HttpServletRequest request) {
		return "crud";
	}
}
