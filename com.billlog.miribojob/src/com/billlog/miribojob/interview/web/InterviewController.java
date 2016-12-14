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
package com.billlog.miribojob.interview.web;

import java.util.List;

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
public class InterviewController {

	@Resource(name = "InterviewService")
	private IInterviewService interviewService;
	
	/**
	 * 글 목록을 조회한다. (pageing)
	 * @param searchVO - 조회할 정보가 담긴 SampleDefaultVO
	 * @param model
	 * @return "egovSampleList"
	 * @exception Exception
	 */
	@RequestMapping(value = "/selectInterviewList.do")
	public String selectInterviewList(@ModelAttribute("interviewVO") InterviewVO interviewVO, ModelMap model) throws Exception {
		
		System.err.println("/selectInterviewList.do comein");
		
		List<InterviewVO> list = interviewService.selectInterviewList();
		
		model.addAttribute("interviewList", list);
		
//		return "user/selectUserList";
		return "interview/selectInterviewList";
	}
	
	@RequestMapping(value = "/insertInterview.do")
	public String insertInterview(@ModelAttribute("interviewVO") InterviewVO interviewVO, ModelMap model) throws Exception {
		
		System.err.println("/insertInterview.do comein");
		/*
		 * INSERT INTO tb_interview(iname,isex,ijob,ianswer1,ianswer2,ianswer3,ianswer4,ianswer5,ianswer6,ianswer7,ianswer8,ianswer9,ianswer10,content,ipwd,iyearmoney,ijobtime,iyearofjob,regdate,ijobcity)
		 * VALUES('홍길동','m','의적','1','2','3','4','5','6','7','8','9','10','내요오옹','패스워드','연보옹','하루 근무시간','근속년수',now(),'16')
		 */
		interviewService.insertInterview(interviewVO);
		
		return "redirect:/main.do";
	}
}
