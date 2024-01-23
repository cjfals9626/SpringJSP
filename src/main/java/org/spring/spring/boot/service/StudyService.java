package org.spring.spring.boot.service;

import org.spring.spring.boot.dao.StudyDao;
import org.spring.spring.boot.vo.StudyVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class StudyService {
    @Autowired
    StudyDao studyDao;

    public List<StudyVo> doStudyList(){
        return studyDao.doStudyList();
    }

    public StudyVo doStudyVo(String keyId){
        return studyDao.doStudyVo(keyId);
    }

    public int doStudyUpdate(StudyVo studyVo) {
        return studyDao.doStudyUpdate(studyVo);
    }

    public int doDelete(String studyId) {
        return studyDao.doDelete(studyId);
    }

    public int doStudyInsert(StudyVo studyVo) {
        return studyDao.doStudyInsert(studyVo);
    }
}
