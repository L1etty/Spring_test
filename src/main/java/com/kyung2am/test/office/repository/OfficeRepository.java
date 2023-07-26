package com.kyung2am.test.office.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kyung2am.test.office.domain.Office;

@Repository
public interface OfficeRepository extends JpaRepository<Office, Integer>{

}
