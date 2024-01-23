package org.spring.spring.boot.controller;

import org.spring.spring.boot.service.StudyService;
import org.spring.spring.boot.vo.StudyVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/study_reg")
public class StudyController {
    @Autowired
    StudyService studyService;

    //수정
    @GetMapping("/modify")
    public String doUpdate(@RequestParam String studyId, Model model){

        StudyVo studyVo = studyService.doStudyVo(studyId);

        model.addAttribute("studyVo", studyVo);

        return "study/study_modify";
    }

    @PostMapping("/modify_exe")
    public String doUpdateExe(@ModelAttribute StudyVo studyVo){

        //MyBatis는 수정, 삭제가 기본적으로 int를 반환함.
        //Update, Delete가 몇 개 되었는지
        int i = studyService.doStudyUpdate(studyVo);
        System.out.println("반환 값 = " + i);

        //뷰를 바로 반환하는 게 아닌
        //Controller의 호출 URL을 호출하게 됨
        return "redirect:/study_reg";
    }


    //삭제
    @GetMapping("/delete")
    public String doDelete(@RequestParam String studyId){
        studyService.doDelete(studyId);
        return "redirect:/study_reg";
    }

    //등록
    @GetMapping("/insert")
    public String doInsert(){
        return "study/study_insert";
    }

    //등록 실행
    @PostMapping("/insert_exe")
    public String doInsertExe(@ModelAttribute StudyVo studyVo){

        int i = studyService.doStudyInsert(studyVo);

        return "redirect:/study_reg";
    }
}
