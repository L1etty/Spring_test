package com.kyung2am.test.officejob;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kyung2am.test.officejob.domain.OfficeJobOpening;
import com.kyung2am.test.officejob.repository.OfficeJobRepository;

@Controller
@RequestMapping("/select")
public class OfficeJobController {

	@Autowired
	private OfficeJobRepository officeJobRepository;
	
	@GetMapping("/1")
	@ResponseBody
	public OfficeJobOpening selectById() {
		OfficeJobOpening office = officeJobRepository.findById(8).orElse(null);
		return office;
	}
	
	@GetMapping("/2")
	@ResponseBody
	public List<OfficeJobOpening> findByOfficeId(@RequestParam("officeId") int officeId){
		List<OfficeJobOpening> office = officeJobRepository.findByOfficeId(officeId);
		
		return office;
		
	}
	
//	3. 복합 조건 조회
//	웹 back-end 개발자 이고 정규직인 공고를 조회하고 아래와 같이 출력하세요.
	@GetMapping("/3")
	@ResponseBody
	public List<OfficeJobOpening> findByPositionAndType(){
		return officeJobRepository.findByPositionAndType("웹 back-end 개발자", "정규직");
	}
	
	@GetMapping("/4")
	@ResponseBody
	public List<OfficeJobOpening> findByTypeOrSalaryGreaterThanEqual(){
		return officeJobRepository.findByTypeOrSalaryGreaterThanEqual("정규직", 9000);
	}

	@GetMapping("/5")
	@ResponseBody
	public List<OfficeJobOpening> findTop3ByTypeOrderBySalaryDesc(){
		return officeJobRepository.findTop3ByTypeOrderBySalaryDesc("계약직");
	}
	
	@GetMapping("/6")
	@ResponseBody
	public List<OfficeJobOpening> findByRegionAndSalaryBetween(){
		return officeJobRepository.findByRegionAndSalaryBetween("성남시 분당구",7000,8500);
	}

	@GetMapping("/7")
	@ResponseBody
	public List<OfficeJobOpening> findByTypeAndSalaryGreaterThanAndDeadLine(){
		return officeJobRepository.findByTypeAndSalaryGreaterThanAndDeadLine("정규직", 8100, "2026-04-10");
	}
	
	
	
}
