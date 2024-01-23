package org.spring.spring.boot.dao;


import org.apache.ibatis.annotations.Mapper;
import org.spring.spring.boot.vo.StudyVo;

import java.util.List;
import java.util.Map;

@Mapper
public interface StudyDao {
    public List<StudyVo> doStudyList();

    public StudyVo doStudyVo(String keyId);


    //반환값 : 몇 개 수정되었는지
    public int doStudyUpdate(StudyVo studyVo);

    public int doDelete(String studyId);

    public int doStudyInsert(StudyVo studyVo);
}
