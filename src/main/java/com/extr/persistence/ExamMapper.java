package com.extr.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.extr.domain.exam.ExamHistory;
import com.extr.util.Page;

public interface ExamMapper {

	public void addUserExamHistory(ExamHistory examHistory);

	public ExamHistory getUserExamHistoryByUserIdAndExamPaperId(
			@Param("userId") String userId, @Param("examPaperId") int examPaperId);
	
	public ExamHistory getUserExamHistoryByHistId(
			@Param("histId") int histId);
	
	public void updateExamHistory(ExamHistory examHistory);
	
	public List<ExamHistory> getUserExamHistoryListByUserId(@Param("userId") String userId,@Param("page") Page<ExamHistory> page);
}
