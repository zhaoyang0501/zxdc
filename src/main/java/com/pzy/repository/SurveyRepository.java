package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Survey;
public interface SurveyRepository extends PagingAndSortingRepository<Survey, Long>,JpaSpecificationExecutor<Survey>{
}

