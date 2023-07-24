package com.kyung2am.test.pension;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kyung2am.test.pension.domain.Booking;
import com.kyung2am.test.pension.service.PensionService;

@Controller
@RequestMapping("/pension")
public class PensionController {
	
	@Autowired
	private PensionService pensionService;
	
	@GetMapping("/")
	public String pensionmain() {
		return "/pension/pension_list_input";
		
	}
	
	@GetMapping("/reservationList")
	public String getBookingList(Model model) {
		
		List<Booking> bookingList = pensionService.getBookingList();
		
		model.addAttribute("bookingList", bookingList);

		return "/pension/pension_Reservation_List";
	}
	
	@GetMapping("/delete")
	@ResponseBody
	public Map<String, String> removeBooking(@RequestParam("id") int id) {
		
		Map<String, String> json = new HashMap<>();
		if(pensionService.removeBooking(id) <= 1) {
			json.put("result", "success");
		}else {
			json.put("result", "fail");
		}
		
		return json;
	}

	@GetMapping("reservationInput")
	public String input() {
		return "/pension/pension_Reservation_input";
	}
	
	@GetMapping("/add")
	@ResponseBody
	public Map<String, String> addBooking(
			@RequestParam("name") String name
			,@RequestParam("headcount") int headcount
			,@RequestParam("day") int day
			,@RequestParam("date") @DateTimeFormat(pattern = "yyyy-MM-dd") Date date
			,@RequestParam("phoneNumber") String phoneNumber
			) {
		
		Map<String, String> json = new HashMap<>();
		
		if(pensionService.addBooking(name, headcount, day, date, phoneNumber) <= 1) {
			json.put("result", "success");
		}else {
			json.put("result", "fail");
		}
		
		return json;
	}
}
