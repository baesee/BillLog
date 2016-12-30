/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.billlog.miribojob.admin.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import egovframework.example.sample.service.EgovSampleService;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.SampleVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springmodules.validation.commons.DefaultBeanValidator;

import com.billlog.miribojob.interview.model.InterviewVO;
import com.billlog.miribojob.interview.service.IInterviewService;
import com.billlog.miribojob.question.model.QuestionVO;
import com.billlog.miribojob.question.service.IQuestionService;
import com.billlog.miribojob.user.model.UserVO;
import com.billlog.miribojob.user.service.IUserService;

/**
 * @Class Name : EgovSampleController.java
 * @Description : EgovSample Controller Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */

@Controller
public class AdminController {

	@Resource(name = "UserService")
	private IUserService userService;
	
	@Resource(name = "QuestionService")
	private IQuestionService questionService;
	
	@Resource(name = "InterviewService")
	private IInterviewService interviewService;
	
	/**
	 * 글 목록을 조회한다. (pageing)
	 * @param searchVO - 조회할 정보가 담긴 SampleDefaultVO
	 * @param model
	 * @return "egovSampleList"
	 * @exception Exception
	 */
	@RequestMapping(value = "/main.do")
	public String Main(ModelMap model) throws Exception {
		System.err.println("MAIN COME IN");
		return "main/main";
	}
	
	@RequestMapping(value = "/test.do")
	public String csstest(ModelMap model) throws Exception {
		System.err.println("CSS TEST PAGE COME IN");
		return "test/test";
	}
	
	@RequestMapping(value = "/userDashboard.do")
	public String userDashboard(ModelMap model) throws Exception {
		
		System.err.println("USERDASHBOARD.DO COME IN");
		
		List<UserVO> list = userService.selectUserList();
		model.addAttribute("resultList", list);
		
		
		return "admin/user/userDashboard";
	}
	
	@RequestMapping(value = "/interviewDashboard.do")
	public String interviewDashboard(ModelMap model) throws Exception {
		System.err.println("USERDASHBOARD.DO COME IN");
		return "admin/interviewDashboard/interviewDashboard";
	}
	
	@RequestMapping(value = "/interviewAnswer.do")
	public String interviewAnswer(@ModelAttribute("interviewVO") InterviewVO interviewVO, ModelMap model) throws Exception {
		System.err.println("interviewAnswer.do COME IN");
		
		List<InterviewVO> list = interviewService.selectInterviewList();
		
		model.addAttribute("answerList", list);
		
		return "admin/interviewDashboard/interviewAnswer";
	}
	
	@RequestMapping(value = "/deleteAnswer.do")
	public String deleteAnswer(@ModelAttribute("interviewVO") InterviewVO interviewVO, ModelMap model ) throws Exception {
		System.err.println("deleteAnswer.do COME IN");
		
		interviewService.deleteInterview(interviewVO);
		
		return "redirect:/interviewAnswer.do";
	}
	
	@RequestMapping(value = "/admin_main.do")
	public String adminMain(@ModelAttribute("interviewVO") InterviewVO interviewVO, QuestionVO questionVo,  ModelMap model) throws Exception {
		System.err.println("admin_main.do COME IN");
		
		//가장 최근 등록된 인터뷰 5가지 가져오기
		List<InterviewVO> fastUpdateList = interviewService.selectFastUpdateInterviewList();
		
		//일반 사용자 : 1 , 관리자 : 99, 인터뷰어 : 2
		int adminUserCnt;
		int ilbanUserCnt;
		int interviewerCnt;
		
		// 인터뷰 글이 올라온 총 개수
		int interviewTotalCnt;
		
		// role별 유저수 가져오기
		adminUserCnt = userService.getUserCount(99);
		ilbanUserCnt = userService.getUserCount(1);
		interviewerCnt = userService.getUserCount(2);
		
		// 인터뷰 개수 가져오기
		interviewTotalCnt = interviewService.getInterviewTatalCnt();
		
		// 현재 사용중인 질문 개수 및 내용
		List<String> qList = new ArrayList<String>();
		String q_code = "1"; //질문조회 시 코드번호
		
		questionVo = questionService.selectQuestion(q_code);
		
		if(!"".equals(questionVo.getQuestion1()) && questionVo.getQuestion1() != null){
			qList.add(questionVo.getQuestion1());
		}
		if(!"".equals(questionVo.getQuestion2()) && questionVo.getQuestion2() != null){
			qList.add(questionVo.getQuestion2());
		}
		if(!"".equals(questionVo.getQuestion3()) && questionVo.getQuestion3() != null){
			qList.add(questionVo.getQuestion3());
		}
		if(!"".equals(questionVo.getQuestion4()) && questionVo.getQuestion4() != null){
			qList.add(questionVo.getQuestion4());
		}
		if(!"".equals(questionVo.getQuestion5()) && questionVo.getQuestion5() != null){
			qList.add(questionVo.getQuestion5());
		}
		if(!"".equals(questionVo.getQuestion6()) && questionVo.getQuestion6() != null){
			qList.add(questionVo.getQuestion6());
		}
		if(!"".equals(questionVo.getQuestion7()) && questionVo.getQuestion7() != null){
			qList.add(questionVo.getQuestion7());
		}
		if(!"".equals(questionVo.getQuestion8()) && questionVo.getQuestion8() != null){
			qList.add(questionVo.getQuestion8());
		}
		if(!"".equals(questionVo.getQuestion9()) && questionVo.getQuestion9() != null){
			qList.add(questionVo.getQuestion9());
		}
		if(!"".equals(questionVo.getQuestion10()) && questionVo.getQuestion10() != null){
			qList.add(questionVo.getQuestion10());
		}
		
		model.addAttribute("qList", qList);
		model.addAttribute("list_size", qList.size());
		model.addAttribute("adminUserCnt", adminUserCnt);
		model.addAttribute("ilbanUserCnt", ilbanUserCnt);
		model.addAttribute("interviewerCnt", interviewerCnt);
		model.addAttribute("interviewTotalCnt", interviewTotalCnt);
		model.addAttribute("fastUpdateList", fastUpdateList);
		
		return "admin/dashboard/mainDashboard";
	}
}
