package com.kyung2am.test.office.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.kyung2am.test.office.domain.Office;
import com.kyung2am.test.officejob.domain.OfficeJobOpening;

@Repository
public interface OfficeRepository extends JpaRepository<Office, Integer>{
}
