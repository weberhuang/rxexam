package com.extr.persistence;

import org.apache.ibatis.annotations.Param;

import com.extr.domain.exam.PracticePaper;

/**
 * @author Ocelot
 * @date 2014年6月8日 下午8:40:22
 */
public interface PracticeMapper {

	PracticePaper getPracticePaperByUserID(@Param("userId")String userId);

	void deletePracticePaperByUserId(@Param("userId")String userId);

	void insertPracticePaper(PracticePaper practicePaper);

}
