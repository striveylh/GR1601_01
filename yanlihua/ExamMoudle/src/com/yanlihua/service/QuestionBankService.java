package com.yanlihua.service;

import com.yanlihua.bean.Questionbank;
import com.yanlihua.bean.Subject;

import java.util.List;

/**
 * Created by 晏利花 on 2017/12/5.
 */
public interface QuestionBankService {
    //根据方向和阶段查询科目及科目序号
    public List<Subject> selectSubjectInfoBySudAndSusQuestionService(String sudirection, String sustage);

    //根据id查询题目的数量
    public List<Questionbank> selectSuidNumberInQuestionBankQuestionBankService(Integer suid);

    //根据suid查询科目名字
    public Subject selectSubjectnameBySuidQuestionBankService(Integer suid);
}
