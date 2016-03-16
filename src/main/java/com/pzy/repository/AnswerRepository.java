package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import com.pzy.entity.Answer;
public interface AnswerRepository extends PagingAndSortingRepository<Answer, Long>,JpaSpecificationExecutor<Answer>{
}

