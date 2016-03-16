
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

import com.pzy.entity.Question;
import com.pzy.repository.QuestionRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class QuestionService {
     @Autowired
     private QuestionRepository questionRepository;

 	public List<Question> findTop3() {
 		return questionRepository.findAll(
 				new PageRequest(0, 15, new Sort(Direction.DESC, "createDate")))
 				.getContent();
 	}
 	
     public List<Question> findAll() {
         return (List<Question>) questionRepository.findAll(new Sort(Direction.DESC, "id"));
     }
     public Page<Question> findAll(final int pageNumber, final int pageSize,final String name){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Question> spec = new Specification<Question>() {
              public Predicate toPredicate(Root<Question> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (name != null) {
                   predicate.getExpressions().add(cb.like(root.get("name").as(String.class), "%"+name+"%"));
              }
              return predicate;
              }
         };
         Page<Question> result = (Page<Question>) questionRepository.findAll(spec, pageRequest);
         return result;
     	}
     
     public Page<Question> findAll(final int pageNumber, final int pageSize,final Integer type ){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Question> spec = new Specification<Question>() {
              public Predicate toPredicate(Root<Question> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (type != null) {
                  predicate.getExpressions().add(cb.equal(root.get("type").as(Integer.class),type));
               }
              return predicate;
              }
         };
         Page<Question> result = (Page<Question>) questionRepository.findAll(spec, pageRequest);
         return result;
     	}
		public void delete(Long id){
			questionRepository.delete(id);
		}
		public Question find(Long id){
			  return questionRepository.findOne(id);
		}
		public void save(Question question){
			questionRepository.save(question);
		}
}