package com.ssafy.enjoytrip.board.model;

import java.util.List;

public class BoardServiceImpl implements IBoardService {

	private static  IBoardService bservice=new BoardServiceImpl();
	
	private BoardServiceImpl() {
		bdao=new BoardDaoImpl();
	}
	
	public static IBoardService getInstance() {
		return bservice;
	}
	
	private IBoardDao bdao;

	@Override
	public boolean write(BoardDto boardDto) {
		return bdao.write(boardDto);
	}

	@Override
	public List<BoardDto> boardlist() {
		return bdao.boardlist();
	}

	@Override
	public BoardDto detail(int article_no) {
		bdao.updateHit(article_no);
		return bdao.detail(article_no);
	}

	@Override
	public boolean delete(int article_no) {
		return bdao.delete(article_no);
	}

	@Override
	public boolean update(BoardDto boardDto) {
		return bdao.update(boardDto);
	}

	@Override
	public List<BoardDto> searchlist(String option, String value) {
		return bdao.searchlist(option, value);
	}
	
}
