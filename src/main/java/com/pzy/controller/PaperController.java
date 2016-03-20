package com.pzy.controller;
import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pzy.entity.Question;
import com.pzy.entity.Survey;
import com.pzy.service.QuestionService;
import com.pzy.service.SurveyService;
/***分类管理
 * @author panchaoyang
 *qq 263608237
 */
@Controller
@RequestMapping("/admin/paper")
public class PaperController {
	@Autowired
	private QuestionService questionService;
	@Autowired
	private SurveyService surveyService;
	@RequestMapping("index")
	public String index(Model model) {
			model.addAttribute("surveys",surveyService.findAll());
			model.addAttribute("questions",questionService.findAll());
      		return "admin/paper/index";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(
			@RequestParam(value = "sEcho", defaultValue = "1") int sEcho,
			@RequestParam(value = "iDisplayStart", defaultValue = "0") int iDisplayStart,
			@RequestParam(value = "iDisplayLength", defaultValue = "10") int iDisplayLength, String name
			) throws ParseException {
		Survey survey=surveyService.find(Long.valueOf(name));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aaData", survey.getQuestions());
		map.put("sEcho", sEcho);
		return map;
	}
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> save(Long qid,Long id) {
		Map<String, Object> map = new HashMap<String, Object>();
		Survey survey=surveyService.find(id);
		survey.addQuestion(questionService.find(qid));
		try {
			surveyService.save(survey);
		} catch (Exception e) {
			map.put("state", "error");
			map.put("msg", "保存失败，该题目已经存在");
		}
		
		map.put("state", "success");
		map.put("msg", "保存成功");
		return map;
	}
	@RequestMapping(value = "/update")
	@ResponseBody
	public Map<String, Object> update(Question question) {
		questionService.save(question);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("state", "success");
		map.put("msg", "保存成功");
		return map;
	}
	@RequestMapping(value = "/delete/{id}/{sid}")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable Long id,@PathVariable Long sid) {
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Survey survey=surveyService.find(sid);
			Question q=null;
			for(Question bean:survey.getQuestions()){
				if(bean.getId().equals(id)){
					q=bean;
				}
			}
			survey.removeQuestion(q);
			surveyService.save(survey);
			map.put("state", "success");
			map.put("msg", "删除成功");
		} catch (Exception e) {
			map.put("state", "error");
			map.put("msg", "删除失败，外键约束");
		}
        return map;
	}

	@RequestMapping(value = "/get/{id}")
	@ResponseBody
	public Map<String, Object> get(@PathVariable Long id ) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("object", questionService.find(id));
		map.put("state", "success");
		map.put("msg", "成功");
		return map;
	}
}
