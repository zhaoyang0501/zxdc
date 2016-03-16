
package com.pzy.service;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.pzy.entity.Answer;
import com.pzy.entity.Survey;
import com.pzy.repository.AnswerRepository;
import com.pzy.repository.SurveyRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class SurveyService {
     @Autowired
     private SurveyRepository surveyRepository;
     
     @Autowired
     private AnswerRepository answerRepository;
 	 public List<Survey> findTop3() {
 		return surveyRepository.findAll(
 				new PageRequest(0, 15, new Sort(Direction.DESC, "createDate")))
 				.getContent();
 	}
 	
     public List<Survey> findAll() {
         return (List<Survey>) surveyRepository.findAll(new Sort(Direction.DESC, "id"));
     }
     public Page<Survey> findAll(final int pageNumber, final int pageSize,final String name){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Survey> spec = new Specification<Survey>() {
              public Predicate toPredicate(Root<Survey> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (name != null) {
                   predicate.getExpressions().add(cb.like(root.get("name").as(String.class), "%"+name+"%"));
              }
              return predicate;
              }
         };
         Page<Survey> result = (Page<Survey>) surveyRepository.findAll(spec, pageRequest);
         return result;
     	}
     
     public Page<Survey> findAll(final int pageNumber, final int pageSize,final Integer type ){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Survey> spec = new Specification<Survey>() {
              public Predicate toPredicate(Root<Survey> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (type != null) {
                  predicate.getExpressions().add(cb.equal(root.get("type").as(Integer.class),type));
               }
              return predicate;
              }
         };
         Page<Survey> result = (Page<Survey>) surveyRepository.findAll(spec, pageRequest);
         return result;
     	}
		public void delete(Long id){
			surveyRepository.delete(id);
		}
		public Survey find(Long id){
			  return surveyRepository.findOne(id);
		}
		public void save(Survey survey){
			surveyRepository.save(survey);
		}
		public void save(List<Answer> answers){
			answerRepository.save(answers);
		}
}