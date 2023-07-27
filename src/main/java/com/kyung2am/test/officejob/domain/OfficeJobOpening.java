package com.kyung2am.test.officejob.domain;

import java.time.ZonedDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.UpdateTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
@Table(name="office_job_opening")
@Getter
@Entity
public class OfficeJobOpening {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "officeId")
	private int officeId;
	private String position;
	private String responsibilities;
	private String qualification;
	private String type;
	private String region;
	private int salary;
	private ZonedDateTime deadline;

	@Column(name = "createdAt")
	@UpdateTimestamp
	private ZonedDateTime createdAt;
	
	@Column(name = "updatedAt")
	@UpdateTimestamp
	private ZonedDateTime updatedAt;
	
}
