package com.kyung2am.test.officejob.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kyung2am.test.officejob.domain.OfficeJobOpening;

@Repository
public interface OfficeJobRepository extends JpaRepository<OfficeJobOpening, Integer>{
	
	public List<OfficeJobOpening> findByOfficeId(int officeId);
	
	// WHERE `position` = #{position} AND `type` = #{type}
	public List<OfficeJobOpening> findByPositionAndType(String position, String type);

	// WHERE `type` = #{type} OR `salary` >= 9000
	public List<OfficeJobOpening> findByTypeOrSalaryGreaterThanEqual(String type, int salary);
	
}
