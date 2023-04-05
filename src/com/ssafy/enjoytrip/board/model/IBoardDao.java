package com.ssafy.enjoytrip.board.model;

import java.util.List;

public interface IBoardDao {
	boolean write(BoardDto boardDto);
	List<BoardDto> boardlist();
	BoardDto detail(int article_no);
	boolean delete(int article_no);
	boolean updateHit(int article_no);
	boolean update(BoardDto boardDto);
	List<BoardDto> searchlist(String option, String value);
}
