package com.kyung2am.test.seller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kyung2am.test.seller.domain.Seller;
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
	
	@GetMapping("/seller_info")
	public String sellerInfo(Model model, @RequestParam(value = "id", required = false) Integer id) {
		Seller seller = sellerService.checkSellerInfo();
		if(id != null) {
			seller = sellerService.checkSellerInfo(id);
		}
		
		model.addAttribute("result", seller);
		return "/jsp/jspInfo";
	}
}
