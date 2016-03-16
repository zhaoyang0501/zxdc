package com.pzy.entity;
import java.util.List;
/***
 * 分类
 *
 */
/***
 *  *对应数据库-- 分类
 * @author Administrator
 *
 */
public class AnswerDto {
	
	private List<Answer> answers;
	
	public List<Answer> getAnswers() {
		return answers;
	}

	public void setAnswers(List<Answer> answers) {
		this.answers = answers;
	}
	
}