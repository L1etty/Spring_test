package com.kyung2am.test.realtor.repository;

import org.springframework.stereotype.Repository;

import com.kyung2am.test.realtor.domain.Realtor;

@Repository
public interface RealtorRepository {

	public int insertRealtor(Realtor realtor);
	
}
