package com.kyung2am.test.officejob.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.kyung2am.test.officejob.domain.OfficeJobOpening;

@Repository
public interface OfficeJobRepository extends JpaRepository<OfficeJobOpening, Integer>{
	
	public List<OfficeJobOpening> findByOfficeId(int officeId);
	
	// WHERE `position` = #{position} AND `type` = #{type}
	public List<OfficeJobOpening> findByPositionAndType(String position, String type);

	// WHERE `type` = #{type} OR `salary` >= 9000
	public List<OfficeJobOpening> findByTypeOrSalaryGreaterThanEqual(String type, int salary);
	
	public List<OfficeJobOpening> findTop3ByTypeOrderBySalaryDesc(String type);
	
	public List<OfficeJobOpening> findByRegionAndSalaryBetween(String region, int start, int end);
	
	@Query(value = "SELECT * FROM `office_job_opening` WHERE `type`=:type AND `deadline` > :deadline AND `salary` >= :salary ORDER BY `salary` DESC;", nativeQuery = true)
	public List<OfficeJobOpening> findByTypeAndSalaryGreaterThanAndDeadLine(@Param("type") String type,@Param("salary") int salary,@Param("deadline") String deadline);
	
}
