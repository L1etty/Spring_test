package com.kyung2am.test.office;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kyung2am.test.office.domain.Office;
import com.kyung2am.test.office.repository.OfficeRepository;
import com.kyung2am.test.office.service.OfficeService;
import com.kyung2am.test.officejob.domain.OfficeJobOpening;

@Controller
@RequestMapping("/office")
public class OfficeController {
	
	@Autowired
	private OfficeService officeService;
	
	@Autowired
	private OfficeRepository officeRepository;
	
//	@Autowired
//	private OfficeJobOpeningRepository officeJobOpeningRepository;

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
	

//	id 로 조회
//	id가 8인 공고를 조회하고 아래와 같이 출력하세요.
	
	@GetMapping("/select1")
	@ResponseBody
	public Optional<Office> selectById(){
		Optional<Office> office = officeRepository.findById(7);
		return office;
	}
	
//	Parameter 조건 조회
//	Request Parameter로 전달 받은 company id로 해당하는 회사의 공고를 조회하세요.
//	조회 결과를 아래와 같이 출력하세요.
	

}
