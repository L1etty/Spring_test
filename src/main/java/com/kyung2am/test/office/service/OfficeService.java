package com.kyung2am.test.office.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kyung2am.test.office.domain.Office;
import com.kyung2am.test.office.repository.OfficeRepository;

@Service
public class OfficeService {

	@Autowired
	private OfficeRepository officeRepository;
	
	public List<Office> addOffice(List<Office> office) {
		
		List<Office> officeList = officeRepository.saveAll(office);
		
		return officeList;
		
	}
	
	public Office updateOffice(int id, String scale, int headcount) {
		Office office = officeRepository.findById(id).orElse(null);
		office = office.toBuilder()
			.scale(scale)
			.headcount(headcount)
			.build();
		return office;
		
	}
	
	public void deleteOffice(int id) {
		Office office = officeRepository.findById(id).orElse(null);
		officeRepository.delete(office);
	}
	
}
