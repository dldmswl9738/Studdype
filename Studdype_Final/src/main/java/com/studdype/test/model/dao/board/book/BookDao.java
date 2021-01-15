package com.studdype.test.model.dao.board.book;

import java.util.List;
import java.util.Map;

import com.studdype.test.model.dto.board.BookDto;

public interface BookDao {
	String NAMESPACE="book.";
	
	public int selectTotalRegisterBookNum(int s_no); // 등록된 도서 총 개수
	public List<BookDto> selectSearchBookList(int s_no);	// 화면에 보여줄 해당 페이지 도서 리스트
	public BookDto selectOneBook(BookDto dto);	// 해당 도서 선택
	public List<BookDto> bookList(int s_no);
	public int insertRegisterBook(BookDto dto);	// 작성한 도서 정보 insert
}
