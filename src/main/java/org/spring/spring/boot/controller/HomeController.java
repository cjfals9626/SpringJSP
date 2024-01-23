package org.spring.spring.boot.controller;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.spring.spring.boot.service.StudyService;
import org.spring.spring.boot.vo.StudyVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
@Slf4j
public class HomeController {

    @Autowired
    StudyService studyService;

    @RequestMapping("/")
    public String doHome(){
        return "home";
    }

    @RequestMapping("/study_reg")
    public String doStudyReg(HttpServletRequest request, Model model){

        List<StudyVo> studyList = studyService.doStudyList();

        model.addAttribute("studyList", studyList);

        for (StudyVo vo : studyList){
            log.info("keyId={} studyDay={} contents={} regDay={}", vo.getKeyId(), vo.getStudyDay(), vo.getContents(), vo.getRegDay());
        }

        return "study_reg";
    }

    @RequestMapping("/member_list")
    public String doMemberList(){
        return "member_list";
    }
}
