package com.kyung2am.test.pension.repository;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kyung2am.test.pension.domain.Booking;

@Repository
public interface PensionRepository {
	
	public List<Booking> selectBookingList();
	
	public int deleteBooking(@Param("id") int id);
	
	public int insertBooking(
			@Param("name") String name
			,@Param("headcount") int headcount
			,@Param("day") int day
			,@Param("date") Date date
			,@Param("phoneNumber") String phoneNumber
			);
	
	public Booking selectReservationBooking(
			@Param("name") String name
			,@Param("phoneNumber") String phoneNumber);

}
