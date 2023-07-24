package com.kyung2am.test.pension.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;

import com.kyung2am.test.pension.domain.Booking;
import com.kyung2am.test.pension.repository.PensionRepository;

@Service
public class PensionService {
	
	@Autowired
	private PensionRepository pensionRepository;

	public List<Booking> getBookingList(){
		List<Booking> bookingList = pensionRepository.selectBookingList();
		return bookingList;
	}
	
	public int removeBooking(int id) {
		int count = pensionRepository.deleteBooking(id);
		return count;
	}
	
	public int addBooking(
			String name
			,int headcount
			,int day
			,Date date
			,String phoneNumber
			) {
		int count = pensionRepository.insertBooking(name, headcount, day, date, phoneNumber);
		return count;
	}
	
	public Booking getReservationBooking(String name, String phoneNumber) {
		
		Booking booking = pensionRepository.selectReservationBooking(name, phoneNumber);
		
		return booking;
	}
}
