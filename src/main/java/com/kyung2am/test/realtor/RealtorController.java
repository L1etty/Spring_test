package com.kyung2am.test.realtor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kyung2am.test.realtor.domain.Realtor;
import com.kyung2am.test.realtor.service.RealtorService;

@Controller
@RequestMapping("/realtor")
public class RealtorController {
	
	@Autowired
	private RealtorService realtorService;

	@GetMapping("/1")
	public String realtorInput() {
		return "/jsp/realtorInput";
	}
	
	@GetMapping("/add_realtor")
	public String realtorAction(
			@RequestParam("office") String office
			,@RequestParam("phoneNumber") String phoneNumber
			,@RequestParam("address") String address
			,@RequestParam("grade") String grade
			, Model model
			) {
		
		Realtor realtor = new Realtor();
		realtor.setOffice(office);
		realtor.setPhoneNumber(phoneNumber);
		realtor.setAddress(address);
		realtor.setGrade(grade);
		
		realtorService.addRealtor(realtor);
		
		model.addAttribute("realtor", realtor);
				
		return "/jsp/realtorInfo";
		
	}
	
}
