package com.kyung2am.test.office;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kyung2am.test.office.domain.Office;
import com.kyung2am.test.office.service.OfficeService;

@Controller
@RequestMapping("/office")
public class OfficeController {
	
	@Autowired
	private OfficeService officeService;

	@GetMapping("/create")
	@ResponseBody
	public List<Office> createOffice() {
		
		List<Office> offices = new ArrayList<>();
		
		Office office = Office.builder()
				.name("넥손")
				.business("컨텐츠게임")
				.scale("대기업")
				.headcount(3585)
				.build();
		offices.add(office);
		office = Office.builder()
				.name("버블팡")
				.business("여신 금융업")
				.scale("대기업")
				.headcount(6934)
				.build();
		offices.add(office);
		
		offices = officeService.addOffice(offices);
		
	
		return offices;
	}
	
	@GetMapping("/update")
	@ResponseBody
	public Office updateOffice() {
		
		Office office = officeService.updateOffice(8, "중소기업", 34);
		
		return office;
	}
	
	@GetMapping("/delete")
	@ResponseBody
	public String deleteOffice() {
		officeService.deleteOffice(8);
		return "삭제 완료";
	}
	
}
