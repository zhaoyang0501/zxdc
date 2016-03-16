package com.pzy.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Question;
public interface QuestionRepository extends PagingAndSortingRepository<Question, Long>,JpaSpecificationExecutor<Question>{
}

