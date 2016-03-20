package com.pzy.controller.front;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pzy.entity.Answer;
import com.pzy.entity.AnswerDto;
import com.pzy.entity.User;
import com.pzy.service.CategoryService;
import com.pzy.service.NewsService;
import com.pzy.service.SurveyService;
import com.pzy.service.UserService;
/***
 * 前台，首页各种连接登陆等
 * @author qq:263608237
 *
 */
@Controller
@RequestMapping("/")
public class FrontController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private NewsService newsService;
	@Autowired
	private SurveyService surveyService;
	@InitBinder  
	protected void initBinder(HttpServletRequest request,   ServletRequestDataBinder binder) throws Exception {   
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true)); 
	}  
	@RequestMapping("news")
	public String news(Model model) {
		model.addAttribute("newss", newsService.findAll());
		return "news";
	}
	@RequestMapping("viewnews")
	public String news(Model model,Long id) {
		model.addAttribute("news", newsService.find(id));
		return "viewnews";
	}
	/***
	 * 跳转到首页
	 * @param model
	 * @return
	 */
	@RequestMapping("index")
	public String index(Model model) {
		return "index";
	}
	@RequestMapping("survey")
	public String survey(Model model) {
		model.addAttribute("surveys",surveyService.findAll());
		return "survey";
	}
	@RequestMapping("surveyview")
	public String survey(Model model,Long id) {
		model.addAttribute("survey",surveyService.find(id));
		return "viewsurvey";
	}
	@RequestMapping("surveysubmit")
	public String surveysubmit(Model model,Long id,AnswerDto dto,HttpSession httpSession) {
		User user=(User)httpSession.getAttribute("user");
		if(user==null){
			model.addAttribute("tip","请登录!");
    		return "login";
		}
		
		for(Answer answer:dto.getAnswers()){
			answer.setCreateDate(new Date());
			answer.setUser(user);
		}
		surveyService.save(dto.getAnswers());
		model.addAttribute("tip","提交成功!");
		model.addAttribute("survey",surveyService.find(id));
		return "viewsurvey";
	}
	
	
	/***
	 * 关于我们
	 * @return
	 */
	@RequestMapping("about")
	public String about() {
		return "about";
	}
	/***
	 * 注册连接
	 * @return
	 */
	@RequestMapping("center")
	public String center() {
		return "center";
	}
	
	
	
	
	/***
	 * 注册连接
	 * @return
	 */
	@RequestMapping("register")
	public String register() {
		return "register";
	}
	/***
	 * 点击注册
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping("doregister")
	public String register(User user,Model model) {
		user.setCreateDate(new Date());
		model.addAttribute("tip","注册成功请登录！");
		userService.save(user);
		return "login";
	}
	/***
	 * 登陆连接
	 * @return
	 */
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	/***
	 * 退出操作清空缓存等操作
	 * @param httpSession
	 * @param model
	 * @return
	 */
	@RequestMapping("loginout")
	public String loginout(HttpSession httpSession,Model model) {
		httpSession.removeAttribute("user");
		return "index";
	}
	
	
	
	/***
	 * 执行登陆动作
	 * @param user
	 * @param httpSession
	 * @param model
	 * @return
	 */
	@RequestMapping("dologin")
	public String dologin(User user,HttpSession httpSession,Model model) {
		User loginuser=userService.login(user.getUsername(), user.getPassword());
    	if(loginuser!=null){
    		httpSession.setAttribute("user", loginuser);
            return "index"; 
    	}
    	else{
    		httpSession.removeAttribute("user");
    		model.addAttribute("tip","登陆失败 不存在此用户名或密码!");
    		return "login";
    	}
	}
	
	
	
	
}

