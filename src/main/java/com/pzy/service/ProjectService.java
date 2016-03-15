
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

import com.pzy.entity.Category;
import com.pzy.entity.Project;
import com.pzy.entity.User;
import com.pzy.repository.ProjectRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class ProjectService {
     @Autowired
     private ProjectRepository projectRepository;

 	public List<Project> findTop3() {
 		return projectRepository.findAll(
 				new PageRequest(0, 15, new Sort(Direction.DESC, "createDate")))
 				.getContent();
 	}
     public List<Project> findAll() {
         return (List<Project>) projectRepository.findAll(new Sort(Direction.DESC, "id"));
     }
     public Page<Project> findAll(final int pageNumber, final int pageSize,final String name){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Project> spec = new Specification<Project>() {
              public Predicate toPredicate(Root<Project> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (name != null) {
                   predicate.getExpressions().add(cb.like(root.get("name").as(String.class), "%"+name+"%"));
              }
              return predicate;
              }
         };
         Page<Project> result = (Page<Project>) projectRepository.findAll(spec, pageRequest);
         return result;
     	}
     
     public Page<Project> findAll(final int pageNumber, final int pageSize,final String key,final Category category){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Project> spec = new Specification<Project>() {
              public Predicate toPredicate(Root<Project> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (key != null) {
                   predicate.getExpressions().add(cb.like(root.get("title").as(String.class), "%"+key+"%"));
              }
              if (category != null) {
                  predicate.getExpressions().add(cb.equal(root.get("category").as(Category.class), category));
              }
              return predicate;
              }
         };
         Page<Project> result = (Page<Project>) projectRepository.findAll(spec, pageRequest);
         return result;
     	}
     
     public Page<Project> findAll(final int pageNumber, final int pageSize,final Integer type ){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Project> spec = new Specification<Project>() {
              public Predicate toPredicate(Root<Project> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (type != null) {
                  predicate.getExpressions().add(cb.equal(root.get("type").as(Integer.class),type));
               }
              return predicate;
              }
         };
         Page<Project> result = (Page<Project>) projectRepository.findAll(spec, pageRequest);
         return result;
     	}
		public void delete(Long id){
			projectRepository.delete(id);
		}
		public Project find(Long id){
			  return projectRepository.findOne(id);
		}
		public void save(Project project){
			projectRepository.save(project);
		}
		public List<Project> findBycategory(final Long id,final String key){
	         Specification<Project> spec = new Specification<Project>() {
	              public Predicate toPredicate(Root<Project> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
	              Predicate predicate = cb.conjunction();
	              if (id != null) {
	                   predicate.getExpressions().add(cb.equal(root.get("category").get("id").as(Long.class), id));
	              }
	              if (key != null) {
	                   predicate.getExpressions().add(cb.like(root.get("name").as(String.class), "%"+key+"%"));
	              }
	              return predicate;
	              }
	         };
	         return  projectRepository.findAll(spec);
	    }
		public List<Project> findLikes(User user ){
	         Specification<Project> spec = new Specification<Project>() {
	              public Predicate toPredicate(Root<Project> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
	              Predicate predicate = cb.conjunction();
	              return predicate;
	           }
	         };
	         List list= projectRepository.findAll(spec);
	         return  list.size()>3?list.subList(0, 3):list;
	    }
}