package com.kyung2am.test.seller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kyung2am.test.seller.service.SellerService;

@Controller
@RequestMapping("/seller")
public class SellerController {
	
	@Autowired
	private SellerService sellerService;

	@GetMapping("/1")
	public String sellerInput() {
		return "/jsp/jspInputForm";
	}
	
	@PostMapping("/add_seller")
	@ResponseBody
	public String sellerInputAction(
			@RequestParam("nickname") String nickname
			, @RequestParam("profileImage") String profileImage
			, @RequestParam("temperature") double temperature
			) {
		
		int count = sellerService.addSeller(nickname, profileImage, temperature);
		
		return "ADD 성공 : " + count;
	}
}
