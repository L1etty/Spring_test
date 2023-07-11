package com.kyung2am.test.seller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/seller")
public class SellerController {

	@GetMapping("/1")
	public String sellerInput() {
		return "/jsp/jspInputForm";
	}
	
	@PostMapping("/add_seller")
	public String sellerInputAction(
			@RequestParam("nickname") String nickname
			, @RequestParam("profileImage") String profileImage
			, @RequestParam("temperature") double temperature
			) {
		
		return "";
	}
}
